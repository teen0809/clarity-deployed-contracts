---
title: "Trait sb-comm-stxnft"
draft: true
---
```
(define-public (pay (id uint) (price uint))
    (begin
        (try! (stx-transfer? (/ (* price u700) u10000) tx-sender 'SP2P3SD0QRKMWSJTW06375CMJXW7DFANGRXKQMN7X))
        (try! (stx-transfer? (/ (* price u200) u10000) tx-sender 'SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S))
        (ok true)))
```