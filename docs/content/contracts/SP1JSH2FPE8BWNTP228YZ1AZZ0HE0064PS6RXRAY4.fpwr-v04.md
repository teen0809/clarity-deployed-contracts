---
title: "Contract fpwr-v04"
draft: true
---
Deployer: SP1JSH2FPE8BWNTP228YZ1AZZ0HE0064PS6RXRAY4

SIP-009: false

SIP-010: true

Functions:
{"name":"get-price","access":"private","args":[{"name":"height","type":"uint128"}],"outputs":{"type":"uint128"}}, {"name":"get-price-at-height","access":"private","args":[{"name":"height","type":"uint128"}],"outputs":{"type":{"optional":"uint128"}}}, {"name":"map-update-rewards-by-height","access":"private","args":[{"name":"height","type":"uint128"},{"name":"wrew-value","type":"uint128"},{"name":"ustx-value","type":"uint128"}],"outputs":{"type":"bool"}}, {"name":"oracle-get-price","access":"private","args":[],"outputs":{"type":{"optional":{"tuple":[{"name":"amount","type":"uint128"},{"name":"height","type":"uint128"},{"name":"timestamp","type":"uint128"}]}}}}, {"name":"update","access":"private","args":[{"name":"price","type":{"tuple":[{"name":"amount","type":"uint128"},{"name":"height","type":"uint128"},{"name":"timestamp","type":"uint128"}]}},{"name":"height","type":"uint128"}],"outputs":{"type":"bool"}}, {"name":"get-price-stx-btc","access":"public","args":[{"name":"height","type":"uint128"}],"outputs":{"type":{"response":{"ok":"uint128","error":"none"}}}}, {"name":"get-token-uri","access":"public","args":[],"outputs":{"type":{"response":{"ok":{"optional":{"string-utf8":{"length":45}}},"error":"none"}}}}, {"name":"mint","access":"public","args":[{"name":"height","type":"uint128"},{"name":"value","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"tuple":[{"name":"ustx","type":"uint128"},{"name":"value","type":"uint128"}]},"error":"uint128"}}}}, {"name":"transfer","access":"public","args":[{"name":"amount","type":"uint128"},{"name":"sender","type":"principal"},{"name":"recipient","type":"principal"},{"name":"memo","type":{"optional":{"buffer":{"length":34}}}}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"update-reward-admin","access":"public","args":[{"name":"new-admin","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"get-balance","access":"read_only","args":[{"name":"owner","type":"principal"}],"outputs":{"type":{"response":{"ok":"uint128","error":"none"}}}}, {"name":"get-decimals","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":"uint128","error":"none"}}}}, {"name":"get-name","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":{"string-ascii":{"length":29}},"error":"none"}}}}, {"name":"get-rewards-by-height","access":"read_only","args":[{"name":"height","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"tuple":[{"name":"ustx","type":"uint128"},{"name":"wrew","type":"uint128"}]},"error":"none"}}}}, {"name":"get-symbol","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":{"string-ascii":{"length":4}},"error":"none"}}}}, {"name":"get-total-supply","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":"uint128","error":"none"}}}}