---
title: "Contract Julias-V1"
draft: true
---
Deployer: SPR11YBZY0MM5AZFTQQEX1X1K9EN9TZZF0G21YBJ

SIP-009: true

SIP-010: false

Functions:
{"name":"mint","access":"private","args":[{"name":"new-owner","type":"principal"}],"outputs":{"type":{"response":{"ok":"uint128","error":"uint128"}}}}, {"name":"claim","access":"public","args":[],"outputs":{"type":{"response":{"ok":"uint128","error":"uint128"}}}}, {"name":"transfer","access":"public","args":[{"name":"token-id","type":"uint128"},{"name":"sender","type":"principal"},{"name":"recipient","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"get-last-token-id","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":"uint128","error":"none"}}}}, {"name":"get-owner","access":"read_only","args":[{"name":"token-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"optional":"principal"},"error":"none"}}}}, {"name":"get-token-uri","access":"read_only","args":[{"name":"token-id","type":"uint128"}],"outputs":{"type":{"response":{"ok":{"optional":{"string-ascii":{"length":79}}},"error":"none"}}}}