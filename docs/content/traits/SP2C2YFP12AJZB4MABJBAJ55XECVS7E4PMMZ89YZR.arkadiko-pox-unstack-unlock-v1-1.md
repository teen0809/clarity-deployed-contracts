---
title: "Trait arkadiko-pox-unstack-unlock-v1-1"
draft: true
---
```
(define-public (unstack-and-unlock (vault-id uint) (stacker uint))
  (let ((vault (contract-call? .arkadiko-freddie-v1-1 get-vault-by-id vault-id)))
    (if (get revoked-stacking vault)
      true ;; already revoked
      (try! (contract-call? .arkadiko-freddie-v1-1 toggle-stacking vault-id))
    )
    (if (is-eq stacker u1)
      (try! (contract-call? .arkadiko-stacker-v1-1 enable-vault-withdrawals vault-id))
      (if (is-eq stacker u2)
        (try! (contract-call? .arkadiko-stacker-2-v1-1 enable-vault-withdrawals vault-id))
        (if (is-eq stacker u3)
          (try! (contract-call? .arkadiko-stacker-3-v1-1 enable-vault-withdrawals vault-id))
          (if (is-eq stacker u4)
            (try! (contract-call? .arkadiko-stacker-4-v1-1 enable-vault-withdrawals vault-id))
            true ;; not supported
          )
        )
      )
    )
    (ok true)
  )
)

```