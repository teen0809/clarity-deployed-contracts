;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED u401)


(define-data-var multipliers (list 5000 uint) (list
u11900
u10000
u10000
u11500
u13000
u10500
u12400
u11000
u11200
u11900
u11000
u13000
u10700
u11600
u14500
u10000
u11000
u20000
u20000
u10000
u11400
u13000
u10000
u10000
u10500
u10000
u13000
u12700
u11800
u11600
u13000
u16400
u10000
u10000
u11500
u11000
u13500
u11000
u10500
u11500
u11400
u11400
u13500
u10000
u15000
u10500
u12400
u10500
u12000
u11100
u15600
u12400
u10500
u10000
u13000
u13000
u10500
u11000
u10000
u11400
u14000
u10000
u10000
u11400
u11500
u11000
u10000
u10000
u11900
u13000
u11400
u11600
u12400
u14500
u14600
u12000
u13700
u13000
u10000
u10000
u11000
u11000
u13000
u11400
u11700
u10000
u10000
u11000
u10000
u10600
u11700
u14000
u12400
u11200
u11400
u14600
u16400
u10700
u10500
u14400
u10000
u11900
u11000
u12400
u10500
u10000
u13100
u11400
u13700
u10000
u12600
u11500
u11000
u13700
u13100
u11000
u10000
u15900
u12000
u11200
u13500
u12100
u11500
u10000
u10000
u10000
u10000
u11900
u10000
u11400
u20000
u10000
u10000
u11400
u10000
u10000
u10000
u15800
u10000
u10000
u19600
u12500
u11500
u11200
u11200
u14400
u10000
u11200
u10000
u10500
u10000
u11600
u10000
u12500
u11000
u10000
u11000
u12200
u10000
u10000
u10000
u10000
u10700
u13000
u11900
u10600
u10000
u10000
u10000
u11400
u10000
u10000
u11000
u13500
u12100
u12000
u10000
u12100
u11400
u11000
u12800
u10000
u11000
u13500
u12400
u14200
u11200
u10000
u10000
u10000
u11000
u14600
u11200
u11500
u13000
u10000
u14400
u10000
u12600
u11500
u12800
u10000
u10500
u14800
u12800
u10000
u11200
u13000
u11100
u11500
u10000
u11700
u10000
u13300
u11000
u10500
u10000
u11000
u11400
u10000
u10500
u10000
u11600
u11200
u15200
u11900
u10500
u13800
u10000
u16000
u11200
u10000
u10000
u11000
u10000
u11400
u10000
u10000
u10000
u12000
u11000
u14400
u10500
u10500
u10000
u11800
u12100
u10000
u10500
u11000
u15400
u13000
u13300
u10600
u12600
u11000
u10000
u10500
u11400
u11000
u10500
u10500
u11400
u10500
u11400
u11000
u13100
u10000
u10000
u10700
u12600
u10000
u11000
u12700
u10000
u10500
u10000
u11000
u10500
u10000
u10500
u11000
u11400
u11000
u11400
u11000
u11900
u10000
u13500
u11000
u10000
u10500
u15900
u10000
u11500
u12400
u11000
u11400
u10000
u12500
u14000
u10000
u13300
u11000
u11000
u10000
u11600
u11000
u11400
u10500
u11200
u10000
u10000
u11000
u12800
u10000
u11000
u10000
u13300
u12400
u10000
u13300
u10000
u11200
u11400
u11400
u10500
u10000
u10500
u13000
u11000
u10000
u10600
u10700
u10500
u10000
u10500
u13000
u15000
u14600
u10000
u13000
u11600
u10000
u11000
u10000
u11600
u11000
u10700
u11000
u11700
u10000
u12200
u10000
u12500
u10000
u10600
u10000
u10500
u10500
u11500
u10000
u11000
u11000
u12000
u11900
u13000
u10000
u13000
u11000
u13100
u10000
u10000
u11000
u12400
u13000
u11500
u11000
u13000
u11000
u14400
u13000
u10000
u13600
u14900
u10500
u12400
u10500
u11900
u10000
u11400
u11500
u13500
u11000
u11500
u11700
u10000
u13000
u11500
u11900
u15600
u11500
u13000
u10500
u10000
u11400
u10600
u11400
u11000
u10000
u10000
u13000
u11000
u11000
u11400
u10000
u11900
u14200
u10000
u10000
u12800
u11000
u11600
u10000
u11200
u10000
u11000
u10000
u11400
u11200
u10000
u11600
u10500
u10000
u13900
u10500
u10000
u11000
u12500
u13000
u14000
u10000
u10000
u11900
u10000
u10500
u15100
u10000
u12500
u10600
u17800
u10000
u13500
u10600
u10000
u12400
u10000
u11500
u10000
u15000
u13900
u11900
u11100
u11500
u10000
u10000
u10000
u10500
u11600
u11000
u10700
u12600
u11000
u13000
u10500
u10000
u11500
u11200
u11400
u11000
u11200
u23700
u14800
u12800
u10000
u12600
u11900
u10000
u12800
u13100
u11900
u12700
u11000
u12200
u10000
u10000
u11400
u11500
u11400
u10000
u11000
u13500
u10000
u11500
u11200
u11700
u10500
u10500
u13000
u10500
u15000
u10000
u11400
u11500
u10700
u10000
u11900
u10000
u10000
u11200
u11500
u13000
u10500
u11000
u12600
u13000
u10500
u12600
u14400
u10000
u11500
u11700
u11500
u10000
u11400
u11400
u11400
u11200
u11500
u11500
u12400
u11000
u12000
u11400
u13600
u10700
u10500
u11600
u11500
u11400
u10000
u12600
u11100
u12400
u10000
u10500
u11000
u10000
u10600
u14000
u10000
u10500
u10700
u11000
u11200
u11600
u11400
u10000
u10000
u11200
u14400
u11000
u10500
u10500
u11000
u20000
u10000
u12200
u10000
u20600
u11000
u12400
u22800
u10600
u10000
u14600
u10000
u12800
u11000
u11200
u12200
u13000
u10500
u10000
u10500
u10600
u13000
u10500
u10500
u11500
u10500
u12400
u10000
u14000
u10000
u11500
u13700
u14400
u10000
u11000
u10500
u10000
u10500
u11000
u10500
u12400
u12400
u12000
u13000
u10000
u10500
u10000
u10000
u11000
u11500
u11000
u10000
u11000
u10500
u10000
u15400
u23000
u13000
u10000
u13400
u12600
u11200
u14400
u10500
u11000
u10000
u10000
u10500
u14000
u10500
u13000
u14200
u10000
u13500
u10000
u14000
u10000
u11500
u11700
u10000
u11200
u11400
u11200
u10500
u10000
u12900
u14000
u18000
u12600
u12400
u11600
u10500
u10500
u13400
u11400
u10000
u16200
u10500
u10000
u11900
u10500
u10000
u10000
u13500
u10000
u14700
u10000
u12400
u10000
u11500
u10000
u12400
u12900
u13600
u10600
u10000
u12200
u11400
u13000
u15000
u10500
u10000
u10500
u10000
u10000
u11000
u14900
u12400
u10000
u11400
u11600
u10000
u14200
u10000
u12900
u11000
u10000
u12400
u12600
u10000
u11500
u13500
u13000
u10500
u13300
u10500
u11900
u12400
u11900
u10000
u15000
u14100
u12200
u10000
u10000
u14200
u14700
u12100
u11400
u12200
u10000
u10500
u10000
u10000
u10000
u14000
u13000
u10500
u11400
u11600
u11000
u10000
u11900
u14400
u11000
u10500
u15200
u11000
u10700
u11700
u10000
u11400
u10000
u13700
u13900
u11000
u11000
u10000
u11000
u12900
u11000
u11000
u10000
u10000
u10000
u10000
u11500
u14000
u11400
u12100
u10500
u11400
u11600
u12100
u10000
u10500
u15500
u11000
u11400
u11200
u10000
u10500
u11000
u11000
u11000
u12000
u11400
u14700
u13500
u12400
u14000
u10000
u12800
u12000
u10000
u13000
u12400
u11200
u10000
u10500
u14400
u10000
u10600
u10000
u11400
u10500
u10000
u10000
u14500
u20000
u14600
u10000
u10500
u16400
u13000
u13500
u11500
u10500
u11400
u11400
u13700
u10000
u14200
u11200
u12900
u15400
u10000
u10000
u10000
u11400
u10700
u11500
u12000
u11000
u13000
u13600
u10500
u11400
u14100
u11000
u11000
u10000
u10700
u11700
u10600
u11400
u11400
u11400
u14700
u10500
u10000
u10000
u11400
u11000
u10000
u10700
u12000
u14400
u10500
u11900
u10000
u11500
u11400
u10000
u11400
u10000
u11000
u10000
u11400
u11000
u15900
u11500
u10000
u13500
u11900
u10000
u11000
u11900
u14000
u10000
u10500
u11400
u11500
u11400
u12100
u11500
u11000
u11000
u12800
u12400
u12700
u10000
u11900
u10000
u11200
u10000
u10000
u11500
u12000
u14500
u11700
u10000
u10500
u13500
u11000
u12400
u10500
u12800
u11100
u10000
u13500
u11900
u14900
u12400
u10000
u11200
u20000
u11200
u10000
u11400
u11000
u10500
u11500
u10000
u11000
u12000
u11000
u11400
u12100
u12700
u11400
u10000
u10500
u11900
u20500
u15000
u12800
u10000
u11100
u10500
u10700
u11200
u10600
u12800
u11000
u13500
u14000
u16000
u11000
u10500
u18500
u11400
u10500
u10000
u11700
u11200
u11500
u10500
u10500
u10500
u11000
u11000
u11000
u10600
u10500
u10500
u11000
u11500
u11900
u10500
u15500
u17800
u11000
u10500
u10000
u10000
u10000
u11500
u10500
u10000
u11600
u10500
u13300
u11000
u12400
u12900
u13500
u12400
u11500
u11200
u10000
u12400
u10500
u11400
u10000
u11000
u13000
u14000
u11400
u11200
u10000
u10000
u11400
u10000
u10000
u10500
u12000
u10500
u14400
u13200
u11000
u11000
u12400
u13000
u13000
u14000
u12900
u10000
u10600
u11600
u14400
u11900
u10500
u12800
u12800
u11900
u10000
u10500
u16400
u10000
u10500
u10500
u12600
u16400
u10000
u14400
u10000
u10000
u10000
u10500
u12500
u11900
u12800
u10000
u10000
u10500
u11000
u12000
u13000
u10000
u10000
u10700
u12800
u11000
u10000
u11000
u14400
u10500
u11200
u15000
u13000
u10000
u11400
u12900
u10000
u11500
u12500
u11600
u10000
u11400
u10000
u10500
u14500
u13000
u11400
u10600
u11000
u11000
u10000
u10000
u11200
u11900
u10000
u15000
u15500
u15000
u11700
u10500
u13400
u11400
u10000
u10000
u10000
u10000
u10000
u15800
u11400
u10500
u10000
u13300
u12000
u11000
u10000
u13000
u10000
u10000
u11400
u10000
u10000
u12200
u12000
u10500
u10500
u11000
u11000
u13100
u12400
u10500
u10000
u11400
u10000
u14200
u14400
u10500
u11100
u14900
u10000
u11100
u10000
u10000
u13000
u11100
u10600
u11500
u10000
u10500
u10000
u11200
u15600
u10500
u10500
u11200
u10000
u13000
u10500
u10000
u11900
u16100
u11400
u13000
u10000
u12600
u10000
u10000
u10000
u12600
u10600
u14400
u13800
u10500
u10600
u11700
u11200
u10500
u10500
u10000
u10000
u14700
u10500
u11400
u10500
u13500
u13000
u10000
u10000
u13100
u11500
u11400
u13000
u12700
u10000
u10000
u14200
u10500
u11500
u12000
u11500
u11000
u11400
u11900
u10000
u11500
u11000
u11400
u12600
u10000
u10000
u13000
u11400
u11400
u13000
u12100
u11200
u11400
u13000
u11200
u12500
u11000
u12000
u12000
u10500
u12200
u11900
u10000
u10000
u13100
u10000
u10000
u12400
u10700
u11200
u10000
u11500
u10000
u12100
u11000
u14000
u11600
u10700
u10000
u13100
u13500
u10000
u13000
u10000
u11400
u11900
u12800
u11200
u10000
u11000
u11500
u10000
u10700
u11400
u11500
u11400
u10000
u12800
u13000
u11000
u11000
u11800
u11400
u14000
u12000
u12700
u10000
u11900
u10000
u11500
u11000
u11400
u11600
u10000
u10000
u12400
u10000
u10500
u12300
u13000
u11900
u11000
u10000
u12800
u10000
u11400
u10000
u10000
u11400
u11000
u14000
u11400
u10700
u10500
u10000
u10000
u10000
u10000
u11900
u10500
u11000
u10500
u12800
u15000
u11200
u11200
u10000
u12100
u11000
u11600
u11000
u10000
u13100
u11000
u13000
u10500
u10000
u11000
u12000
u10000
u14400
u10000
u11000
u10000
u10000
u12500
u10000
u11000
u10500
u11400
u11000
u10500
u11400
u11900
u11200
u11700
u11000
u11700
u10000
u10000
u10000
u11500
u11500
u10000
u10000
u10000
u16300
u13000
u10000
u10000
u10000
u10000
u10700
u13400
u10600
u10000
u10000
u10000
u13600
u10000
u20000
u16400
u11600
u10000
u11000
u10000
u11400
u12600
u10500
u10000
u10600
u11000
u13000
u10000
u10000
u11200
u11600
u12400
u10000
u12600
u12600
u10500
u10700
u10500
u10500
u11000
u10000
u10500
u11200
u10500
u11200
u11600
u10500
u10000
u10700
u11000
u11000
u10000
u10000
u10000
u11000
u10000
u11500
u11000
u11000
u10500
u11000
u10000
u10000
u10000
u12400
u10000
u10700
u15100
u14000
u11400
u10000
u12400
u10500
u12200
u10000
u11000
u10000
u10000
u10000
u13000
u11400
u10000
u12100
u11000
u12900
u11400
u10000
u11700
u11000
u13000
u11000
u10600
u11500
u10000
u11700
u10000
u11500
u11500
u11100
u11400
u10000
u11700
u11600
u10000
u10000
u12100
u10000
u11500
u11400
u11200
u10000
u12000
u12200
u13000
u11500
u10500
u11400
u10000
u10000
u10000
u11400
u13000
u10000
u13300
u10500
u10000
u14000
u10500
u10500
u15600
u12000
u11400
u10000
u13000
u11900
u10500
u13000
u12100
u11000
u10000
u11500
u10500
u13000
u11000
u13500
u11000
u11000
u10000
u10000
u11000
u11700
u10500
u15500
u13700
u10000
u11000
u10700
u10000
u10000
u10000
u13700
u11200
u10000
u10000
u10500
u13500
u12200
u13000
u11600
u10000
u10000
u13000
u10500
u11700
u12000
u11000
u11400
u14100
u10000
u11400
u14000
u12200
u10000
u13600
u11000
u11400
u11400
u10500
u13000
u14500
u11400
u12700
u10500
u11400
u14400
u12400
u11400
u11000
u10000
u10000
u10000
u13900
u11000
u11000
u11400
u10000
u11200
u11600
u12700
u10600
u12500
u10000
u10000
u11500
u13000
u10700
u14200
u11200
u10000
u11000
u12700
u12900
u12300
u11000
u14200
u10500
u11200
u10000
u11200
u10500
u12000
u11600
u10000
u10000
u11000
u14200
u12400
u12400
u11000
u11500
u14000
u12900
u10000
u10000
u10000
u11400
u10000
u12000
u11600
u11400
u10500
u10000
u11900
u11500
u11000
u11500
u14000
u13000
u11200
u12800
u10000
u13000
u11000
u13000
u10000
u11000
u10500
u15200
u10000
u11600
u11500
u11400
u11400
u13000
u13600
u10000
u10500
u14000
u11200
u11400
u10000
u10000
u14000
u13000
u11200
u10000
u10000
u10500
u12500
u12500
u11200
u10500
u11200
u12400
u10000
u10500
u11500
u11500
u15000
u11500
u10000
u13500
u12000
u12500
u10700
u15600
u10500
u11900
u11500
u10500
u11000
u10000
u12600
u11700
u10000
u13500
u11700
u12000
u10000
u11000
u10000
u10000
u10000
u10000
u12200
u10000
u11000
u11400
u11600
u10000
u20000
u15000
u12000
u10000
u10000
u10500
u13200
u14000
u14800
u10500
u10000
u10500
u10000
u13700
u11500
u10000
u11000
u12000
u15700
u10000
u10500
u10000
u11900
u11000
u11500
u20000
u10000
u21500
u10000
u14400
u11600
u11000
u10500
u15200
u10000
u10000
u11000
u11000
u10000
u11400
u10000
u11400
u13600
u11900
u11000
u11000
u11900
u11200
u10000
u11600
u10000
u12900
u14000
u10000
u11400
u18000
u12900
u12800
u11000
u10500
u10500
u10000
u11400
u13000
u10500
u10500
u11200
u10000
u14000
u10500
u11200
u11200
u12400
u10000
u12400
u13700
u10000
u11500
u10500
u10000
u10000
u12300
u10000
u11000
u15100
u10500
u11500
u11900
u10000
u14000
u11600
u11000
u12800
u13000
u10000
u11000
u10000
u11500
u11000
u10000
u11000
u16400
u11500
u10000
u10700
u12400
u12600
u11700
u10500
u10000
u10500
u11000
u16400
u10000
u10000
u11000
u10000
u10000
u10500
u12100
u13000
u10000
u12400
u10000
u10500
u10500
u11400
u10000
u10600
u10000
u11000
u13000
u10500
u10000
u10000
u10500
u11200
u11400
u10000
u12000
u12100
u11400
u11600
u10500
u10000
u11000
u11000
u12500
u12800
u13700
u12400
u11600
u11500
u15100
u10500
u10000
u10000
u11000
u10000
u11200
u11500
u11000
u10500
u10000
u10500
u10500
u16700
u13000
u11500
u16400
u11000
u16400
u13000
u11500
u12000
u11200
u12800
u11000
u11200
u10000
u10000
u11500
u10000
u12000
u11400
u14400
u10000
u14400
u13500
u13000
u15000
u11900
u13000
u10500
u10000
u10000
u11400
u10000
u10000
u11400
u10000
u10000
u10500
u11000
u10000
u11000
u11400
u11000
u10000
u10000
u12600
u10500
u10000
u12900
u10000
u18000
u11400
u10500
u10000
u10000
u10000
u13500
u14400
u10000
u11000
u11900
u10500
u11100
u14000
u10000
u11400
u11700
u11400
u10000
u10500
u10000
u12800
u10000
u10000
u10500
u12400
u10000
u11400
u11200
u10000
u10000
u11000
u11700
u11000
u11000
u10500
u10000
u11000
u13100
u10000
u11000
u11000
u12000
u11200
u11400
u10000
u11900
u12400
u14000
u11700
u11000
u14200
u10500
u11900
u11000
u11400
u11400
u12400
u11400
u13500
u11000
u10500
u11000
u10500
u11500
u10000
u12000
u11500
u11000
u11500
u20000
u10000
u10500
u11000
u15600
u12400
u14200
u10000
u11000
u11000
u11000
u10000
u10500
u11000
u12400
u11500
u12400
u11200
u12200
u10500
u11400
u10500
u11700
u10500
u10500
u10000
u11900
u11500
u12200
u11400
u11500
u14100
u11000
u13000
u12600
u10000
u10500
u10500
u11000
u10000
u13000
u11500
u11600
u11000
u11700
u10000
u10500
u10600
u12300
u10000
u10000
u10000
u11400
u11200
u11400
u11500
u11000
u13000
u10500
u14000
u13600
u14400
u11400
u11500
u11000
u10000
u10000
u12400
u11000
u10000
u10000
u11000
u12400
u10000
u10000
u10500
u11000
u13000
u10000
u15700
u11000
u14700
u11500
u10000
u10000
u10500
u11200
u10000
u10600
u10000
u11200
u14200
u11000
u11000
u10500
u11000
u12700
u15000
u12100
u11900
u12400
u10000
u13000
u13000
u11000
u11400
u12500
u12600
u11000
u10500
u11600
u11900
u10000
u10000
u14700
u11000
u10000
u10500
u10500
u10500
u16000
u12000
u11000
u12400
u10000
u10000
u11000
u10000
u10000
u10500
u12900
u10000
u10000
u20000
u10000
u10000
u10000
u15400
u13600
u11500
u10600
u10000
u10600
u12400
u10500
u10000
u11400
u10000
u10000
u11400
u10000
u10500
u11500
u12000
u10700
u11400
u11000
u10000
u11400
u20500
u10000
u10000
u13000
u14200
u11000
u11400
u10000
u11500
u10600
u10000
u11000
u10000
u14400
u12200
u12400
u12400
u11400
u11500
u11000
u10000
u13100
u11200
u19900
u11500
u11500
u10500
u14200
u11000
u12400
u11400
u10000
u13000
u10000
u11000
u12000
u11100
u10000
u11500
u11400
u11400
u16400
u11600
u12700
u11000
u10000
u13000
u10000
u14200
u10000
u11000
u11000
u14600
u10500
u12700
u14000
u11400
u13000
u10000
u11400
u12100
u10500
u11400
u11600
u12000
u10000
u17900
u11000
u11000
u12800
u12400
u10500
u11400
u10000
u11400
u14900
u11400
u10500
u12000
u10000
u10000
u15000
u10000
u10600
u11500
u12800
u11000
u10000
u10000
u14600
u11200
u11900
u11000
u10500
u11700
u10000
u12800
u10000
u10000
u10000
u13300
u15600
u11000
u10000
u10000
u14400
u11200
u10000
u15200
u14600
u10000
u11700
u11000
u14900
u10000
u11000
u10500
u11000
u11400
u11000
u11700
u10000
u10000
u11000
u10000
u10000
u13000
u11400
u11000
u12200
u14000
u11000
u10000
u11200
u14600
u10000
u10500
u10500
u11900
u10000
u10000
u11400
u11400
u12400
u11500
u11100
u11000
u20000
u11000
u10500
u13500
u11200
u11900
u10000
u11900
u10000
u11200
u11000
u12000
u12900
u12600
u11400
u10000
u15000
u12800
u11400
u10600
u11700
u11900
u11700
u12400
u10600
u10000
u11400
u10000
u11000
u10500
u10500
u10000
u11000
u14400
u11200
u10700
u11000
u10000
u10000
u11400
u11000
u11400
u11500
u11400
u12900
u12900
u11400
u14000
u10000
u14000
u10000
u11400
u10500
u10000
u11200
u11000
u10500
u12400
u12600
u11800
u11700
u12100
u11400
u11000
u11000
u14600
u10000
u10000
u11000
u10000
u10500
u13100
u11400
u13000
u10000
u10500
u10500
u12100
u10500
u10700
u11400
u11000
u10500
u13400
u10000
u11500
u14800
u11400
u12000
u14200
u11500
u11700
u10600
u14400
u11400
u10500
u10000
u15000
u10000
u11500
u11000
u10000
u11600
u10700
u10700
u10500
u10000
u10500
u10000
u10000
u10500
u10000
u10000
u11400
u10000
u10000
u13000
u11900
u10000
u12000
u11000
u12900
u10000
u14000
u11000
u10000
u13000
u10000
u15500
u11000
u11400
u11000
u10700
u11400
u12400
u11000
u14600
u11000
u12800
u13500
u10000
u10000
u11400
u10000
u11400
u11900
u14000
u10000
u10500
u10500
u11000
u10000
u13000
u11500
u11200
u10000
u11000
u12400
u11500
u11400
u12000
u12400
u11600
u10000
u10000
u11000
u12400
u10000
u12300
u10000
u20000
u11700
u11400
u13000
u10000
u14400
u13100
u11400
u14600
u11400
u11500
u13600
u10000
u11000
u10000
u13600
u11900
u10000
u12400
u12900
u10500
u10700
u11500
u11000
u11400
u11700
u13000
u10000
u10000
u11700
u12400
u10500
u10500
u14900
u10000
u14800
u10500
u14300
u13000
u10500
u11500
u10000
u11400
u10500
u13500
u14400
u10500
u11000
u11500
u11200
u12200
u10000
u10600
u11000
u10500
u10000
u11000
u20000
u13000
u11000
u10500
u10000
u10000
u11400
u11700
u10000
u12000
))

(define-public (new-list (new-multipliers (list 5000 uint)))
    (begin
        (asserts! (is-eq tx-sender CONTRACT-OWNER) (err ERR-NOT-AUTHORIZED))
        (var-set multipliers new-multipliers)
        (ok new-multipliers)
    )
)

(define-read-only (lookup (uid uint))
    (ok (unwrap-panic (element-at (var-get multipliers) uid)))
)