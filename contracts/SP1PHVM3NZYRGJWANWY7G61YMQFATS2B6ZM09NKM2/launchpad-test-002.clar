(impl-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait) ;; for mainnet
;; (impl-trait .nft-trait.nft-trait)
(use-trait commission-trait 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.commission-trait.commission) ;; for mainnet
;; (use-trait commission-trait .commission-trait.commission)

(define-non-fungible-token zzzzz uint)

;; Storage
(define-map token-count principal uint)
(define-map market uint {price: uint, commission: principal})
(define-map private-presale-count principal uint)
(define-map public-sale-count principal uint)

;; Define Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-SOLD-OUT (err u300))
(define-constant ERR-WRONG-COMMISSION (err u301))
(define-constant ERR-INSUFFICIENT-FUNDS (err u400))
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-SALE-NOT-ACTIVE (err u500))
(define-constant ERR-NO-MINTPASS-REMAINING (err u501))
(define-constant ERR-METADATA-FROZEN (err u505))
(define-constant ERR-MINT-ALREADY-SET (err u506))
(define-constant ERR-LISTING (err u507))
(define-constant ERR-ONE-MINT-PER-WALLET (err u508))
(define-constant ERR-BEFORE-MINT-TIME (err u509))
(define-constant ERR-AFTER-MINT-TIME (err u510))
(define-constant MINT-LIMIT u3)

;; Define Variables
(define-data-var last-id uint u0)
(define-data-var metadata-frozen bool false)
(define-data-var base-uri (string-ascii 100) "ipfs://QmWgNKafwPLB1bPkWJieHPVLRs1dmtfxjd4Q5LmpXGNyXv/zzzzz/")
(define-data-var contract-uri (string-ascii 100) "ipfs://placeholder")

(define-data-var commission-percentage uint u1000) 
(define-data-var commission-address principal 'SP7NW9XVEG45SW1367SAHHZG67BFA4GMA9DVGZ0F)
(define-data-var royalty (list 1000 uint) (list u9000 ))
(define-data-var artist-address (list 1000 principal) (list 'SP2M0X4NPQMB6ZZTKD3SAHNJJ8CKKNAB0S79WJFEF )) 

(define-data-var private-sale-active bool true)
(define-data-var sale-active bool true)
(define-data-var private-target-block-height uint u70643)
(define-data-var public-target-block-height uint u71141)
(define-data-var admin principal tx-sender)

(define-data-var stx-cost-per-mint uint u60000000)
;; Get mint limit
(define-read-only (get-mint-limit)
  MINT-LIMIT
)

;; Token count for account
(define-read-only (get-balance (account principal))
  (default-to u0
    (map-get? token-count account)))

(define-private (trnsfr (id uint) (sender principal) (recipient principal))
  (match (nft-transfer? zzzzz id sender recipient)
        success
          (let
            ((sender-balance (get-balance sender))
            (recipient-balance (get-balance recipient)))
              (map-set token-count
                    sender
                    (- sender-balance u1))
              (map-set token-count
                    recipient
                    (+ recipient-balance u1))
              (ok success))
        error (err error)))

;; SIP009: Transfer token to a specified principal
(define-public (transfer (id uint) (sender principal) (recipient principal))
  (begin
    (asserts! (is-eq tx-sender sender) ERR-NOT-AUTHORIZED)
    (asserts! (is-none (map-get? market id)) ERR-LISTING)
    (trnsfr id sender recipient)))

;; SIP009: Get the owner of the specified token ID
(define-read-only (get-owner (id uint))
  ;; Make sure to replace zzzzz
  (ok (nft-get-owner? zzzzz id)))

;; SIP009: Get the last token ID
(define-read-only (get-last-token-id)
    (ok (var-get last-id))
)

;; SIP009: Get the token URI. You can set it to any other URI
(define-read-only (get-token-uri (token-id uint))
  (if (< token-id u5001)
    (ok (some (concat (concat (var-get base-uri) (unwrap-panic (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.conversion lookup token-id))) ".json")))
    (ok (some (concat (concat (var-get base-uri) (unwrap-panic (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.conversion-v2 lookup (- token-id u5001)))) ".json")))
    )
)

(define-read-only (get-contract-uri)
  (ok (var-get contract-uri)))

;; Mint new NFT
;; can only be called from the Mint
(define-private (mint (new-owner principal))
    (let (
        (next-id (+ u1 (var-get last-id)))
    )
      (asserts! (< (var-get last-id) MINT-LIMIT) ERR-SOLD-OUT)
      (match (nft-mint? zzzzz next-id new-owner)
        success
        (let
        ((current-balance (get-balance new-owner)))
          (begin
            ;; (print payout)
            (try! (payout-all))
            (var-set last-id next-id)
            (map-set token-count
              new-owner
              (+ current-balance u1)
            )
            (ok true)))
        error (err (* error u10000)))))

(define-private (payout-all)
  (let (
    (price (var-get stx-cost-per-mint))
    (commission-amount (/ (* price (var-get commission-percentage)) u10000))
    (price-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup price (len (var-get royalty))))
    (divider-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup u10000 (len (var-get royalty))))
    (royalty-amounts (map * (var-get royalty) price-list))
    (payout-amounts (map / royalty-amounts divider-list))
  )
    (asserts! (>= (stx-get-balance tx-sender) price) ERR-INSUFFICIENT-FUNDS)
    (try! (stx-transfer? commission-amount tx-sender (var-get commission-address)))
    (map payout (var-get artist-address) payout-amounts)
    (ok payout-amounts)
  )
)

(define-private (payout (receiver principal) (amount uint))
  (stx-transfer? amount tx-sender receiver)
)

(define-public (burn (id uint) (owner principal))
    (let (
        (token-owner (unwrap-panic (unwrap-panic (get-owner id))))
    )
    (asserts! (is-none (map-get? market id)) ERR-LISTING)
    (asserts! (is-eq tx-sender owner) ERR-NOT-AUTHORIZED)
    (asserts! (is-eq tx-sender token-owner) ERR-NOT-AUTHORIZED)
    (match (nft-burn? zzzzz id owner)
        success
        (let
        ((current-balance (get-balance owner)))
          (begin
            (map-set token-count
              owner
              (- current-balance u1)
            )
            (ok true)))
        error (err (* error u10000)))
    )
)

(define-private (is-sender-owner (id uint))
  (let ((owner (unwrap! (nft-get-owner? zzzzz id) false)))
    (or (is-eq tx-sender owner) (is-eq contract-caller owner))))

(define-read-only (get-listing-in-ustx (id uint))
  (map-get? market id))

(define-public (list-in-ustx (id uint) (price uint) (comm <commission-trait>))
  (let ((listing  {price: price, commission: (contract-of comm)}))
    (asserts! (is-sender-owner id) ERR-NOT-AUTHORIZED)
    (map-set market id listing)
    (print (merge listing {a: "list-in-ustx", id: id}))
    (ok true)))

(define-public (unlist-in-ustx (id uint))
  (begin
    (asserts! (is-sender-owner id) ERR-NOT-AUTHORIZED)
    (map-delete market id)
    (print {a: "unlist-in-ustx", id: id})
    (ok true)))

(define-public (buy-in-ustx (id uint) (comm <commission-trait>))
  (let ((owner (unwrap! (nft-get-owner? zzzzz id) ERR-NOT-FOUND))
      (listing (unwrap! (map-get? market id) ERR-LISTING))
      (price (get price listing)))
    (asserts! (is-eq (contract-of comm) (get commission listing)) ERR-WRONG-COMMISSION)
    (try! (stx-transfer? price tx-sender owner))
    (try! (contract-call? comm pay id price))
    (try! (trnsfr id owner tx-sender))
    (map-delete market id)
    (print {a: "buy-in-ustx", id: id})
    (ok true)))

;; Set base uri
(define-public (set-base-uri (new-base-uri (string-ascii 100)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (asserts! (not (var-get metadata-frozen)) ERR-METADATA-FROZEN)
    (var-set base-uri new-base-uri)
    (ok true)))

;; Set contract uri
(define-public (set-contract-uri (new-contract-uri (string-ascii 100)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (asserts! (not (var-get metadata-frozen)) ERR-METADATA-FROZEN)
    (var-set contract-uri new-contract-uri)
    (ok true))
)

;; Freeze metadata
(define-public (freeze-metadata)
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set metadata-frozen true)
    (ok true)))

(define-public (set-stx-cost (amount uint))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set stx-cost-per-mint amount)
    (ok true)))

(define-public (set-artist-addresses (addresses (list 1000 principal)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set artist-address addresses)
    (ok true)))

(define-public (set-royalties (royalties (list 1000 uint)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set royalty royalties)
    (ok true)))

(define-public (set-admin (new-admin principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set admin new-admin)
    (ok true)
  )
)

(define-private (not-live)
  (begin
    (asserts! (var-get sale-active) ERR-SALE-NOT-ACTIVE)
    (asserts! (var-get private-sale-active) ERR-SALE-NOT-ACTIVE)
    (ok false)
  )
)

;; Claim a new NFT
(define-public (claim)
  (if (var-get sale-active)
    (public-mint tx-sender)
      (if (var-get private-sale-active)
        (private-mintpass-mint tx-sender)
        (not-live)
      )
  )
)

;; begin mint 2
(define-public (claim-two)
  (begin
    (try! (claim))
    (try! (claim))
    (ok true)))
;; end mint 2

;; begin mint 3
(define-public (claim-three)
  (begin
    (try! (claim))
    (try! (claim))
    (try! (claim))
    (ok true)))
;; end mint 3

;; Set public sale flag
(define-public (flip-private-sale)
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    ;; Disable the Public sale
    (var-set sale-active false)
    (var-set private-sale-active (not (var-get private-sale-active)))
    (ok (var-get private-sale-active))))

;; Set public sale flag
(define-public (flip-sale)
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) ERR-NOT-AUTHORIZED)
    (var-set private-sale-active false)
    (var-set sale-active (not (var-get sale-active)))
    (ok (var-get sale-active))))

(define-read-only (get-sale-status)
  (list 
    (and (var-get private-sale-active) (>= block-height (var-get private-target-block-height)))  
    (and (var-get sale-active) (>= block-height (var-get public-target-block-height)))
  )
)

(define-read-only (get-private-target-block-height)
  (var-get private-target-block-height)
)

(define-read-only (get-public-target-block-height)
  (var-get public-target-block-height)
)

(define-read-only (get-private-presale-balance (account principal))
  (default-to u0
    (map-get? private-presale-count account)))

(define-read-only (get-public-balance (account principal))
  (default-to u0
    (map-get? public-sale-count account)))

;; Internal - Mint NFT using Mintpass mechanism
(define-private (private-mintpass-mint (new-owner principal))
  (let ((mint-count (get-private-presale-balance new-owner)))
    (asserts! (var-get private-sale-active) ERR-SALE-NOT-ACTIVE)
    (asserts! (>= block-height (var-get private-target-block-height)) ERR-BEFORE-MINT-TIME)
    (asserts! (> mint-count u0) ERR-NO-MINTPASS-REMAINING)
    (map-set private-presale-count
              new-owner
              (- mint-count u1))
    (mint new-owner) 
  )
)

;; Internal - Mint public sale NFT
(define-private (public-mint (new-owner principal))
  (let ((mint-count (get-public-balance new-owner)))
    (asserts! (var-get sale-active) ERR-SALE-NOT-ACTIVE)
    (asserts! (>= block-height (var-get public-target-block-height)) ERR-BEFORE-MINT-TIME)
    (mint new-owner)
  )
)

;; update pre-sale counts
(define-public (set-private-wl (address principal) (limit uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (map-set private-presale-count address limit)
    (ok true)
  )
)

(define-public (bulk-set-private-wl (addresses (list 1000 principal)) (limits (list 1000 uint)))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (print (map set-private-wl addresses limits))
    (ok true)
  )
)

(define-public (set-public-target-block-height (target uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (var-set public-target-block-height target)
    (ok true)
  )
)

(define-public (set-private-target-block-height (target uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (var-set private-target-block-height target)
    (ok true)
  )
)

;; ###### BEGIN: commissions template code ##################################################
(define-data-var secondary-commission uint u250)

(define-public (pay (id uint) (price uint))
    (if (> (var-get secondary-commission) u0)
        (begin  
                (try! (stx-transfer? (/ (* price (var-get secondary-commission)) u10000) tx-sender (var-get commission-address)))
                ;; total of 5% = u500
                  (try! (stx-transfer? (/ (* price u500) u10000) tx-sender 'SP2M0X4NPQMB6ZZTKD3SAHNJJ8CKKNAB0S79WJFEF))

                (ok true)
        )
        (ok true)
    )
)

(define-public (set-commission (amount uint))
    (begin
        (asserts! (is-eq tx-sender (var-get commission-address)) ERR-NOT-AUTHORIZED)
        (var-set secondary-commission amount)
        (ok true)
    )
)

(define-public (set-commission-address (address principal))
    (begin
        (asserts! (is-eq tx-sender (var-get commission-address)) ERR-NOT-AUTHORIZED)
        (var-set commission-address address)
        (ok true)
    )
)

(define-public (get-commission)
    (ok (var-get secondary-commission))
)

(define-public (get-commission-address)
    (ok (var-get commission-address))
)
;; ###### END: commission template code ##################################################

;; ###### BEGIN: fungible token mint template code ##################################################
(define-data-var mia-cost-per-mint uint u1500000000)

(define-private (mia-mint (new-owner principal))
    (let (
        (next-id (+ u1 (var-get last-id)))
    )
      (asserts! (< (var-get last-id) MINT-LIMIT) ERR-SOLD-OUT)
      (match (nft-mint? zzzzz next-id new-owner)
        success
        (let
        ((current-balance (get-balance new-owner)))
          (begin
            ;; (print payout)
            (try! (mia-payout))
            (var-set last-id next-id)
            (map-set token-count
              new-owner
              (+ current-balance u1)
            )
            (ok true)))
        error (err (* error u10000)))))

(define-private (mia-payout)
  (let (
    (price (var-get mia-cost-per-mint))
    (commission-amount (/ (* price (var-get commission-percentage)) u10000))
    (price-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup price (len (var-get royalty))))
    (divider-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup u10000 (len (var-get royalty))))
    (royalty-amounts (map * (var-get royalty) price-list))
    (payout-amounts (map / royalty-amounts divider-list))
  )
    (asserts! (>= (unwrap-panic (contract-call? 'SP466FNC0P7JWTNM2R9T199QRZN1MYEDTAR0KP27.miamicoin-token get-balance tx-sender)) price) ERR-INSUFFICIENT-FUNDS)
    (map mia-pay (var-get artist-address) payout-amounts)
    (try! (contract-call? 'SP466FNC0P7JWTNM2R9T199QRZN1MYEDTAR0KP27.miamicoin-token transfer commission-amount tx-sender (var-get commission-address) (some 0x00)))
    (ok payout-amounts)
  )
)

(define-private (mia-pay (receiver principal) (amount uint))
  (contract-call? 'SP466FNC0P7JWTNM2R9T199QRZN1MYEDTAR0KP27.miamicoin-token transfer amount tx-sender receiver (some 0x00))
)

(define-public (set-mia-cost (amount uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (var-set mia-cost-per-mint amount)
    (ok true)))

;; Claim a new NFT
(define-public (claim-mia)
  (if (var-get sale-active)
    (mia-public-mint tx-sender)
      (if (var-get private-sale-active)
        (mia-private-mintpass-mint tx-sender)
        (not-live)
      )
  )
)

;; begin mint 2
(define-public (claim-mia-two)
  (begin
    (try! (claim-mia))
    (try! (claim-mia))
    (ok true)))
;; end mint 2

;; begin mint 3
(define-public (claim-mia-three)
  (begin
    (try! (claim-mia))
    (try! (claim-mia))
    (try! (claim-mia))
    (ok true)))
;; end mint 3

;; Internal - Mint NFT using Mintpass mechanism
(define-private (mia-private-mintpass-mint (new-owner principal))
  (let ((mint-count (get-private-presale-balance new-owner)))
    (asserts! (var-get private-sale-active) ERR-SALE-NOT-ACTIVE)
    (asserts! (> mint-count u0) ERR-NO-MINTPASS-REMAINING)
    (map-set private-presale-count
              new-owner
              (- mint-count u1))
    (mia-mint new-owner) 
  )
)

;; Internal - Mint public sale NFT
(define-private (mia-public-mint (new-owner principal))
  (let ((mint-count (get-public-balance new-owner)))
    (asserts! (var-get sale-active) ERR-SALE-NOT-ACTIVE)
    (mia-mint new-owner)
  )
)
;; ###### END: fungible token mint template code ##################################################

;; ###### BEGIN: fungible token mint template code ##################################################
(define-data-var nyc-cost-per-mint uint u2500000000)

(define-private (nyc-mint (new-owner principal))
    (let (
        (next-id (+ u1 (var-get last-id)))
    )
      (asserts! (< (var-get last-id) MINT-LIMIT) ERR-SOLD-OUT)
      (match (nft-mint? zzzzz next-id new-owner)
        success
        (let
        ((current-balance (get-balance new-owner)))
          (begin
            ;; (print payout)
            (try! (nyc-payout))
            (var-set last-id next-id)
            (map-set token-count
              new-owner
              (+ current-balance u1)
            )
            (ok true)))
        error (err (* error u10000)))))

(define-private (nyc-payout)
  (let (
    (price (var-get nyc-cost-per-mint))
    (commission-amount (/ (* price (var-get commission-percentage)) u10000))
    (price-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup price (len (var-get royalty))))
    (divider-list (contract-call? 'SP2KAF9RF86PVX3NEE27DFV1CQX0T4WGR41X3S45C.uint-lists lookup u10000 (len (var-get royalty))))
    (royalty-amounts (map * (var-get royalty) price-list))
    (payout-amounts (map / royalty-amounts divider-list))
  )
    (asserts! (>= (unwrap-panic (contract-call? 'SP2H8PY27SEZ03MWRKS5XABZYQN17ETGQS3527SA5.newyorkcitycoin-token get-balance tx-sender)) price) ERR-INSUFFICIENT-FUNDS)
    (map nyc-pay (var-get artist-address) payout-amounts)
    (try! (contract-call? 'SP2H8PY27SEZ03MWRKS5XABZYQN17ETGQS3527SA5.newyorkcitycoin-token transfer commission-amount tx-sender (var-get commission-address) (some 0x00)))
    (ok payout-amounts)
  )
)

(define-private (nyc-pay (receiver principal) (amount uint))
  (contract-call? 'SP2H8PY27SEZ03MWRKS5XABZYQN17ETGQS3527SA5.newyorkcitycoin-token transfer amount tx-sender receiver (some 0x00))
)

(define-public (set-nyc-cost (amount uint))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (var-set nyc-cost-per-mint amount)
    (ok true)))

;; Claim a new NFT
(define-public (claim-nyc)
  (if (var-get sale-active)
    (nyc-public-mint tx-sender)
      (if (var-get private-sale-active)
        (nyc-private-mintpass-mint tx-sender)
        (not-live)
      )
  )
)

;; begin mint 2
(define-public (claim-nyc-two)
  (begin
    (try! (claim-nyc))
    (try! (claim-nyc))
    (ok true)))
;; end mint 2

;; begin mint 3
(define-public (claim-nyc-three)
  (begin
    (try! (claim-nyc))
    (try! (claim-nyc))
    (try! (claim-nyc))
    (ok true)))
;; end mint 3

;; Internal - Mint NFT using Mintpass mechanism
(define-private (nyc-private-mintpass-mint (new-owner principal))
  (let ((mint-count (get-private-presale-balance new-owner)))
    (asserts! (var-get private-sale-active) ERR-SALE-NOT-ACTIVE)
    (asserts! (> mint-count u0) ERR-NO-MINTPASS-REMAINING)
    (map-set private-presale-count
              new-owner
              (- mint-count u1))
    (nyc-mint new-owner) 
  )
)

;; Internal - Mint public sale NFT
(define-private (nyc-public-mint (new-owner principal))
  (let ((mint-count (get-public-balance new-owner)))
    (asserts! (var-get sale-active) ERR-SALE-NOT-ACTIVE)
    (nyc-mint new-owner)
  )
)
;; ###### END: fungible token mint template code ##################################################

(begin
  (try! (set-private-wl 'SP14PSP8WWCE42Z714JAGTC4AZFSJAWY150PQPP5R u5))
  (try! (set-private-wl 'SP3KAPN7TWS0H7CHMTPJ2DWWX9AGPJ821TMHGMDGX u3))
  (try! (set-private-wl 'SP2E6976SAHE74X64W8Q71YC3QEH4BDQA075PJSHW u5))
  (try! (set-private-wl 'SP9NK9YQGGX9KT2SFBJ3F7GHE6HWKMVWRED34NWK u5))
  (ok true)
)