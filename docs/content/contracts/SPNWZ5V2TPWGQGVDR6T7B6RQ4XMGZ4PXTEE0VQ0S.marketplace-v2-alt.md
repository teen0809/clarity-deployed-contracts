---
title: "Contract marketplace-v2-alt"
draft: true
---
Deployer: SPNWZ5V2TPWGQGVDR6T7B6RQ4XMGZ4PXTEE0VQ0S

SIP-009: false

SIP-010: false

Functions:
{"name":"get-owner","access":"private","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"optional":"principal"},"error":"none"}}}}, {"name":"return-tradable-from-escrow","access":"private","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"transfer-tradable-from-escrow","access":"private","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":{"tuple":[{"name":"code","type":"uint128"},{"name":"kind","type":{"string-ascii":{"length":19}}}]}}}}}, {"name":"transfer-tradable-to-escrow","access":"private","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":{"tuple":[{"name":"code","type":"uint128"},{"name":"kind","type":{"string-ascii":{"length":19}}}]}}}}}, {"name":"admin-unlist-asset","access":"public","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"list-asset","access":"public","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"},{"name":"price","type":"uint128"},{"name":"commission","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"purchase-asset","access":"public","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"set-listings-frozen","access":"public","args":[{"name":"frozen","type":"bool"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"set-minimum-commission","access":"public","args":[{"name":"commission","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"set-minimum-listing-price","access":"public","args":[{"name":"price","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"unlist-asset","access":"public","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"get-listing","access":"read_only","args":[{"name":"tradables","type":"principal"},{"name":"tradable-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"tuple":[{"name":"commission","type":"uint128"},{"name":"owner","type":"principal"},{"name":"price","type":"uint128"}]},"error":"uint128"}}}}