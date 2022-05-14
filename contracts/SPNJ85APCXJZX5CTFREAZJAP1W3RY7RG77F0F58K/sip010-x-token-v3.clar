;; sip010-token
;; A SIP010-compliant fungible token with a mint function.

(impl-trait .sip010-ft-trait-v3.sip010-ft-trait)

(define-constant contract-owner tx-sender)

(define-fungible-token alex-coin u100000000)

(define-constant err-owner-only (err u100))
(define-constant err-not-token-owner (err u102))

(define-public (transfer (amount uint) (sender principal) (recipient principal) (memo (optional (buff 34))))
	(begin
		(asserts! (is-eq tx-sender sender) err-not-token-owner)
		(ft-transfer? alex-coin amount sender recipient)
	)
)

(define-read-only (get-name)
	(ok "X Token")
)

(define-read-only (get-symbol)
	(ok "XXX")
)

(define-read-only (get-decimals)
	(ok u6)
)

(define-read-only (get-balance (who principal))
	(ok (ft-get-balance alex-coin who))
)

(define-read-only (get-total-supply)
	(ok (ft-get-supply alex-coin))
)

(define-read-only (get-token-uri)
	(ok none)
)

(define-public (mint (amount uint) (recipient principal))
	(begin
		(asserts! (is-eq tx-sender contract-owner) err-owner-only)
		(ft-mint? alex-coin amount recipient)
	)
)