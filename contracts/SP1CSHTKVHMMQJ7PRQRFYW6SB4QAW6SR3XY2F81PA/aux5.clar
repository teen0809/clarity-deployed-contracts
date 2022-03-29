;; testnet
;; (use-trait nft-trait .nft-trait.nft-trait)
;; mainnet
(use-trait nft-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait)

(define-constant ERR-BID-NOT-HIGH-ENOUGH (err u100))
(define-constant ERR-NO-BID (err u101))
(define-constant ERR-ITEM-NOT-FOR-SALE (err u102))
(define-constant ERR-AUCTION-ENDED (err u103))
(define-constant ERR-AUCTION-NOT-OVER (err u104))
(define-constant ERR-AUCTION-NOT-LONG-ENOUGH (err u105))
(define-constant ERR-ITEM-OWNER-NOT-FOUND (err u106))
(define-constant ERR-AUCTION-NOT-FOUND (err u107))
(define-constant ERR-AUCTIONS-FROZEN (err u108))
(define-constant ERR-CONTRACT-NOT-AUTHORIZED (err u109))
(define-constant ERR-AUCTION-HAS-BID (err u110))
(define-constant ERR-BIDS-FROZEN (err u111))
(define-constant ERR-UNLISTINGS-FROZEN (err u112))
(define-constant ERR-NOT-AUTHORIZED (err u113))

(define-constant CONTRACT-OWNER tx-sender)

(define-data-var minimum-commission uint u100) ;; minimum commission 1% by default
(define-data-var standard-royalty uint u500) ;; standard royalty of 5%
(define-data-var last-auction-id uint u1)
(define-data-var auctions-frozen bool false) ;; turn off ability to list additional auctions
(define-data-var bids-frozen bool false) ;; turn off ability to bid on auctions
(define-data-var unlistings-frozen bool false) ;; turn off ability to unlist auctions


;; key is auction-id
(define-map auctions
  {
    nft-asset-contract: principal,          ;; contract of the asset being auctioned
    token-id: uint,                         ;; id of the contract asset
  }
  {    
    seller-address: principal,              ;; address of the seller listing the artwork
    commission: uint,                       ;; auction house commission calculated from percentage
    royalty-address: principal,             ;; address of creator to pay royalties to
    royalty: uint,                          ;; royalty amount calculated from percentage
    reserve-price: uint,                    ;; minimum price the artwork can sell for
    end-block-height: (optional uint),      ;; when auction ends
    block-length: uint,                     ;; length of the auction in blocks
    type: uint,                             ;; 1 - start immediately; 2 - start when minimum price is bid
    listed: bool,                           ;; sell status
    auction-id: uint,
  }
)

(define-map auction-bids
  {
    nft-asset-contract: principal,
    token-id: uint,
  }
  { 
    buyer: principal,
    amount: uint,
    auction-id: uint,
  }
)

(define-map verified-contracts 
  { nft-asset-contract: principal } 
  { royalty-address: principal, royalty-percent: uint }
)

(define-read-only (get-auction (nft-asset-contract <nft-trait>) (token-id uint))
  (match (map-get? auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id}) 
    auction-data
    (ok auction-data)
    ERR-AUCTION-NOT-FOUND
  )  
)

(define-read-only (get-auction-bid (nft-asset-contract <nft-trait>) (token-id uint))
  (default-to
    {buyer: CONTRACT-OWNER, amount: u0}
    (map-get? auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
  )
)

(define-read-only (get-royalty-amount (contract principal)) 
  (match (map-get? verified-contracts {nft-asset-contract: contract})
    royalty-data
    (get royalty-percent royalty-data)
    u0
  )
)

(define-read-only (get-royalty (contract principal))
  (match (map-get? verified-contracts {nft-asset-contract: contract})
    royalty-data
    royalty-data
    {royalty-address: CONTRACT-OWNER, royalty-percent: u0}
  )
)

(define-private (get-owner (nft-asset-contract <nft-trait>) (token-id uint))
  (contract-call? nft-asset-contract get-owner token-id)
)

(define-public (add-contract (nft-asset-contract <nft-trait>) (royalty-address principal) (royalty-percent uint))
  (begin 
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED) 
    (ok (map-set verified-contracts {nft-asset-contract: (contract-of nft-asset-contract)} {royalty-address: royalty-address, royalty-percent: royalty-percent}))  
  )
)

(define-public (remove-contract (nft-asset-contract <nft-trait>))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (map-delete verified-contracts {nft-asset-contract: (contract-of nft-asset-contract)}))
  )
)

(define-public (set-royalty (nft-asset-contract <nft-trait>) (royalty-address principal) (royalty-percent uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (map-set verified-contracts {nft-asset-contract: (contract-of nft-asset-contract)} {royalty-address: royalty-address, royalty-percent: royalty-percent}))
  )
)

(define-public (set-minimum-commission (amount uint))
  (begin 
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (var-set minimum-commission amount))
  )
)

(define-public (set-auctions-frozen (frozen bool))
  (begin 
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (var-set auctions-frozen frozen))
  )
)

(define-public (set-unlistings-frozen (frozen bool))
  (begin 
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (var-set unlistings-frozen frozen))
  )
)

(define-public (set-bids-frozen (frozen bool))
  (begin 
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ok (var-set bids-frozen frozen))
  )
)

(define-public (list-auction (nft-asset-contract <nft-trait>) (token-id uint) (nft-asset {block-length: uint, reserve-price: uint, type: uint}))
  (let 
    (
      (block-length (get block-length nft-asset))
      (reserve-price (get reserve-price nft-asset))
      (type (get type nft-asset))
      (asset-contract (contract-of nft-asset-contract))
      (commission (var-get minimum-commission))
      (royalty (var-get standard-royalty))
      (auction-id (var-get last-auction-id))
      (end-block-height (if (is-eq (get type nft-asset) u1) (some (+ block-height block-length)) none))
    )
    (match (map-get? verified-contracts {nft-asset-contract: asset-contract})
      verified-contract
      (begin
        (asserts! (is-eq false (var-get auctions-frozen)) ERR-AUCTIONS-FROZEN)
        (asserts! (> block-length u1) ERR-AUCTION-NOT-LONG-ENOUGH)
        (try! (transfer-nft nft-asset-contract token-id tx-sender (as-contract tx-sender)))
        (map-set auctions {nft-asset-contract: asset-contract, token-id: token-id} {seller-address: tx-sender, commission: commission, royalty-address: (get royalty-address verified-contract), royalty: (get royalty-percent verified-contract), reserve-price: reserve-price, end-block-height: end-block-height, block-length: block-length, type: type, listed: true, auction-id: auction-id})
        (var-set last-auction-id (+ auction-id u1))

        (print 
          {
            type: "auctions",
            action: "list-auction",
            data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, auction-id: auction-id, block-length: block-length, reserve-price: reserve-price}
          }
        )

        (ok {nft-asset-contract: asset-contract, token-id: token-id})
      )
      ERR-CONTRACT-NOT-AUTHORIZED
    )    
  )
)

(define-private (transfer-nft (token-contract <nft-trait>) (token-id uint) (sender principal) (recipient principal))
  (contract-call? token-contract transfer token-id sender recipient)
)

(define-public (place-bid (nft-asset-contract <nft-trait>) (token-id uint) (amount uint))
  (let
    (
      (auction (unwrap! (get-auction nft-asset-contract token-id) ERR-AUCTION-NOT-FOUND))
      (current-bid (get-auction-bid nft-asset-contract token-id))
    )
    (asserts! (get listed auction) ERR-ITEM-NOT-FOR-SALE)
    (asserts! (is-eq false (var-get bids-frozen)) ERR-BIDS-FROZEN)
    (asserts! 
      (or
        (is-none (get end-block-height auction))
        (< block-height (unwrap! (get end-block-height auction) (err u3000)))
      )
      ERR-AUCTION-ENDED
    )
    (asserts! (>= amount (get reserve-price auction)) ERR-BID-NOT-HIGH-ENOUGH)
    (asserts! (>= amount (+ (get amount current-bid) u1000000)) ERR-BID-NOT-HIGH-ENOUGH)

    ;; set the end block height if this is the first bid on type 2 auction (auto set on type 1 auction)
    (if (is-none (get end-block-height auction))
      (map-set auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id}
        (merge auction {end-block-height: (some (+ block-height (get block-length auction)))})
      )
      true
    )

    ;; transfer stx from this buyer to contract to secure bid
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))

    ;; transfer stx from contract back to previous high bidder
    (if (> (get amount current-bid) u0)
      (begin 
        ;; (try! (stx-transfer? (get amount current-bid) (as-contract tx-sender) (get buyer current-bid)))
        (try! (as-contract (stx-transfer? (get amount current-bid) tx-sender (get buyer current-bid))))
        (map-delete auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
      )
      true
    )
    
    (map-set auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id} {buyer: tx-sender, amount: amount, auction-id: (get auction-id auction)})

    (print 
      {
        type: "auctions",
        action: "place-bid",
        data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, buyer: tx-sender, amount: amount, auction-id: (get auction-id auction)}
      }
    )
    
    (ok amount)
  )
)

(define-public (end-auction (nft-asset-contract <nft-trait>) (token-id uint))
  (let 
    (
      (auction (unwrap! (get-auction nft-asset-contract token-id) ERR-AUCTION-NOT-FOUND))
      (current-bid (get-auction-bid nft-asset-contract token-id))
      (commission (/ (* (get amount current-bid) (get commission auction)) u10000))
      (royalty (/ (* (get amount current-bid) (get royalty auction)) u10000))
    )
    (asserts! (get listed auction) ERR-ITEM-NOT-FOR-SALE)
    (asserts! 
      (and 
        (is-some (get end-block-height auction))
        (>= block-height (unwrap-panic (get end-block-height auction)))
      )
      ERR-AUCTION-NOT-OVER
    )

    (map-set auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id} (merge auction {listed: false}))
    (if (>= (get amount current-bid) (get reserve-price auction))
      (begin
        ;; transfer stx of successful bid from contract to seller, minus commission and royalty
        (try! (as-contract (stx-transfer? (- (- (get amount current-bid) commission) royalty) tx-sender (get seller-address auction))))

        ;; transfer commission to auction house
        (try! (as-contract (stx-transfer? commission tx-sender CONTRACT-OWNER)))

        ;; transfer royalty to artist
        (try! (as-contract (stx-transfer? royalty tx-sender (get royalty-address auction))))

        ;; transfer nft to buyer
        (try! (as-contract (transfer-nft nft-asset-contract token-id tx-sender (get buyer current-bid))))
      )
      (begin
        ;; no successful bids, return nft back to owner
        ;; (try! (transfer-nft nft-asset-contract token-id (as-contract tx-sender) (get seller-address auction)))
        (try! (as-contract (transfer-nft nft-asset-contract token-id tx-sender (get seller-address auction))))
      )
    )
    (map-delete auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
    (map-delete auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})

    (print 
      {
        type: "auctions",
        action: "end-auction",
        data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, auction-id: (get auction-id auction)}
      }
    )
    (ok {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
  )
)

;; owner/admin can do general unlist if no bids have been placed
(define-public (unlist-auction (nft-asset-contract <nft-trait>) (token-id uint))
  (let
    (
      (auction (unwrap! (get-auction nft-asset-contract token-id) ERR-AUCTION-NOT-FOUND))
      (current-bid (get-auction-bid nft-asset-contract token-id))
    )
    (asserts! (get listed auction) ERR-ITEM-NOT-FOR-SALE)
    (asserts! (or (is-eq tx-sender CONTRACT-OWNER) (is-eq tx-sender (get seller-address auction))) ERR-NOT-AUTHORIZED)
    (asserts! (is-eq (get amount current-bid) u0) ERR-AUCTION-HAS-BID)
    (asserts! (is-eq false (var-get unlistings-frozen)) ERR-UNLISTINGS-FROZEN)

    (map-delete auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
    ;; (try! (transfer-nft nft-asset-contract token-id (as-contract tx-sender) (get seller-address auction)))
    (try! (as-contract (transfer-nft nft-asset-contract token-id tx-sender (get seller-address auction))))

    (print 
      {
        type: "auctions",
        action: "unlist-auction",
        data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, auction-id: (get auction-id auction)}
      }
    )
    (ok {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
  )
)

;; admin can unlist at anytime with both bid stx and listed nft getting returned to owners
(define-public (admin-unlist (nft-asset-contract <nft-trait>) (token-id uint))
  (let
    (
      (auction (unwrap! (get-auction nft-asset-contract token-id) ERR-AUCTION-NOT-FOUND))
      (current-bid (get-auction-bid nft-asset-contract token-id))
    )
    (asserts! (get listed auction) ERR-ITEM-NOT-FOR-SALE)
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)

    (map-delete auctions {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
    (if (> (get amount current-bid) u0)
      (begin
        (try! (as-contract (stx-transfer? (get amount current-bid) tx-sender (get buyer current-bid))))
        (map-delete auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
      )
      true
    )

    (try! (as-contract (transfer-nft nft-asset-contract token-id tx-sender (get seller-address auction))))

    (print 
      {
        type: "auctions",
        action: "admin-unlist",
        data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, auction-id: (get auction-id auction)}
      }
    )
    (ok {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})
  )
)

;; admin remove bid
(define-public (admin-remove-bid (nft-asset-contract <nft-trait>) (token-id uint))
  (let 
    (
      (auction (unwrap! (get-auction nft-asset-contract token-id) ERR-AUCTION-NOT-FOUND))
      (current-bid (get-auction-bid nft-asset-contract token-id))
    )
    (asserts! (get listed auction) ERR-ITEM-NOT-FOR-SALE)
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)

    (try! (as-contract (stx-transfer? (get amount current-bid) tx-sender (get buyer current-bid))))
    (map-delete auction-bids {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id})

    (print 
      {
        type: "auctions",
        action: "admin-remove-bid",
        data: {nft-asset-contract: (contract-of nft-asset-contract), token-id: token-id, buyer: (get buyer current-bid), auction-id: (get auction-id auction)}
      }
    )
    (ok (get amount current-bid))
  )
)