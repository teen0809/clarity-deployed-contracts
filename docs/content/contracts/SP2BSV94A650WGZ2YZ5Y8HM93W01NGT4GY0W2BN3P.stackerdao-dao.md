---
title: "Contract stackerdao-dao"
draft: true
---
Deployer: SP2BSV94A650WGZ2YZ5Y8HM93W01NGT4GY0W2BN3P

SIP-009: false

SIP-010: false

Functions:
{"name":"add-member","access":"public","args":[{"name":"member-to-add","type":"principal"},{"name":"name","type":{"string-ascii":{"length":256}}}],"outputs":{"type":{"response":{"ok":"principal","error":"uint128"}}}}, {"name":"move-ft","access":"public","args":[{"name":"treasury","type":"trait_reference"},{"name":"ft","type":"trait_reference"},{"name":"amount","type":"uint128"},{"name":"recipient","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"move-nft","access":"public","args":[{"name":"treasury","type":"trait_reference"},{"name":"nft","type":"trait_reference"},{"name":"token-id","type":"uint128"},{"name":"recipient","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"move-stx","access":"public","args":[{"name":"treasury","type":"trait_reference"},{"name":"amount","type":"uint128"},{"name":"recipient","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"remove-member","access":"public","args":[{"name":"member-to-remove","type":"principal"}],"outputs":{"type":{"response":{"ok":"principal","error":"uint128"}}}}, {"name":"set-dao-name","access":"public","args":[{"name":"new-dao-name","type":{"string-ascii":{"length":256}}}],"outputs":{"type":{"response":{"ok":{"string-ascii":{"length":256}},"error":"uint128"}}}}, {"name":"set-name","access":"public","args":[{"name":"member","type":"principal"},{"name":"new-member-name","type":{"string-ascii":{"length":256}}}],"outputs":{"type":{"response":{"ok":"bool","error":"uint128"}}}}, {"name":"get-member-name","access":"read_only","args":[{"name":"member-address","type":"principal"}],"outputs":{"type":{"optional":{"tuple":[{"name":"name","type":{"string-ascii":{"length":256}}}]}}}}, {"name":"get-name","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":{"string-ascii":{"length":256}},"error":"none"}}}}, {"name":"get-number-of-historical-members","access":"read_only","args":[],"outputs":{"type":"uint128"}}, {"name":"get-number-of-members","access":"read_only","args":[],"outputs":{"type":"uint128"}}, {"name":"get-version","access":"read_only","args":[],"outputs":{"type":{"response":{"ok":{"string-ascii":{"length":5}},"error":"none"}}}}, {"name":"is-member","access":"read_only","args":[{"name":"user","type":"principal"}],"outputs":{"type":{"response":{"ok":"bool","error":"none"}}}}