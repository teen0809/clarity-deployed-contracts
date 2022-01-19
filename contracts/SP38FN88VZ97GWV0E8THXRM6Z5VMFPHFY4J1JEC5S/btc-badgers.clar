;; Use the SIP090 interface & define BTC Badgers NFT
;; With major help & support from Jamil.BTC, Obsidian.BTC & Plutus.BTC
;;(impl-trait 'ST1HTBVD3JG9C05J7HBJTHGR0GGW7KXW28M5JS8QE.nft-trait.nft-trait)
(impl-trait 'SP2PABAF9FTAJYNFZH93XENAJ8FVY99RRM50D2JG9.nft-trait.nft-trait)
(define-non-fungible-token btc-badgers-nft uint)

;; Storage -> All Whitelist Wallets
(define-data-var white-list-wallets (list 164 principal) (list
'SP2MAWMYQPPVD3KH8SXC9M0HHERQ45YAKJFTWKXQ1 'SP25VWGTPR19E344S4ENTHQT8651216EPNABRYE51
'SPQJ2NN5TBG78QT8EWP8FXAMW3WNSEEDWP5Z52RE
'SP367N6FBWD7QJPRZ1JTY2015EZ183160CAFS1X2M
'SP3XD3G5ETW7KHR1F3EDF3MZ8S3B9PGREG3Q8RSFF
'SP2ZQD9D4VGKJPCK2HD3YC78Q9J6PVK52HF1K1A9F
'SP3FF6G73VD2AXJ5A757THZAHEEB385Y36YR49Q12
'SP29GC5A0XFFDRB8P2PP330WNT5EM2WG78TP825DE
'SP2JZHPYW51Z89NSKGAEHMCMCRR2DXW1JHSARFX52 'SPKTEXGCMJEQ7DG12ADXMAEKSNNSH3H8E2NHA141
'SPBK6BZDK5NCS1W6RBW6TXSVW6KVAGSFR8WPCKP1
'SP3SF0PSD7KYVJQPKKRBYJFF7NENGFHZSBVHM3B27
'SP1F934ZWR42NBC8W7YKRXJR3KYZBTMY66A9SF8T3
'SP3HXJJMJQ06GNAZ8XWDN1QM48JEDC6PP6W3YZPZJ
'SP143YHR805B8S834BWJTMZVFR1WP5FFC03WZE4BF
'SP2XZXH4A7F82FJY2J98Y2V90S05Q4HYMNTNDS50G
'SP2XZXH4A7F82FJY2J98Y2V90S05Q4HYMNTNDS50G
'SP1PTT5GSWJSD4PZR4WR4NHJZQ3NJEWJK41HV1G7H
'SP2KD44XNHAXEPY4WXDQDCM596DNM68N29EGWJJ52
'SPMSJDTTJ4W91KE70CFZXS17BHGT19W1ZJWAR0YK
'SP6Y3ZH4JQ8XS051S3ZPXP5CHD3S3FV9W90F1GMW
'SP13M69F9YG8XAQAK3G1MDSHK5BHH8WQD8E9EDGDY
'SPDMT7JY32FDEG7Q5WKJ5VG1MQMK32NZAG37E4MP
'SP77NT5VGM8XNMCTGK39Z1F6JRAX7GK7MWMS22TQ
'SP2BZQ48MADDN62X044NNJCNXF5BA33C3BFQ3TZJW
'SP3MMG05H6T48W5NJEEST0RR3FTPGKPM7C19X5M16
'SP69MS8W17WWT6MNH8AB4A7BMY5AX6MAMWD89CCR
'SP3EZ3H7H49CEE49X8HE9W6QX0Y29W8R5T1MMY7AJ
'SP3C2S21PJQFTE5BRE7MTJM836KEZMJ2B65ET7KGR
'SP2DFX28F1S3CB46B5XH9M5JQ7N4SMCE7CQY1TNYS
'SP12BEEDG31J0AH68DFDJJYZ36D002PKDZCP1DZQE
'SPSD87RKYKZT60K8S5P9EJAP9SR3QCQZ0JAVKSHW
'SP217CGMM3Y3YHT3PFNDCQE9W6BQRP008GSDDQAY6
'SP195QEMHF63F6RYCBVMMQ1STC1E1HYXNPE5M5CBB
'SP3B21N36MBF85BD2J3RERBT8CFPF14J2KBAN37XN
'SP3MBD59SRRNVS9Y0SDXJSHZWDESR2WJ826N3Y9JD
'SP3H2TDA41FD8MSVE73MHTEF75M4JDF7KR6XAXSZB
'SP2662ZC5WETZSWGXPZVHE1ZS1TZHCGSQYMBNHQZJ
'SP14ZVJSGEC4P7WGYCYC5P67WNGBVZ1K71DA75J13
'SP262CK3VPG6PDF4S96TTXFBVV9Y9Z75F51A6G83N
'SP1K8RG4PV202FHT8J9023G1WJRPFTSZXN9TPNEJX
'SP3NZMPEJ2XXFBREZ8EKZV68TYQGEN57A7B7RBAJ
'SP36KKAVEYFDV1B3ZG9RGNNY9JRBJD5F366SVCEDA
'SP23NXVJWQARSPF1K3TD73MHVJE4EFV9V58GXHT73
'SPZR3D7P5947PMXEMBPSMXGRG9AGWGX5MHW3MY7Y
'SPYF9PC72BSWS0DGA33FR24GCG81MG1Z96463H68
'SP16YA5N2VE52JRDYXKFZ2TF7T2CBRB4SH8NYKJX1
'SP2HK7J6617VBSKXQGZWMXP2R64MMDX3S54M0S1Q6
'SP2XZG59SFHG5T1F7DNRN1WQFSHF8BQ4Q0N8WEFX1 'SP1QRFVDS76WFV5XCDHAR7FQYTSNM4M1P4TGFZRK1
'SPN6VDWZJZC9FM1N5Q94B823FP52GB1JZGHB8W8
'SP24ZBZ8ZE6F48JE9G3F3HRTG9FK7E2H6K2QZ3Q1K
'SP3EYT7KF5ERWQFTWW3SWHS8QRYBNSMRZ7JW73YXR
'SP2CCXSJQDEXQYTV5MWFTTK6SWMCPGY2G05DS1MM6
'SP11BM4N515NM88M87WWCB74RV739VWNH11D6E3JC
'SP2BQBA3MWPPYR8PRK45CVZNRABQ8MDVN2JBCERGD
'SP5V0RA0BT21D86MY382YDX8A2DGRMP4H46W24AQ
'SPR3ASZ6QFT5F3R308DXBYJ9Q08YXN3SSDSWV76P
'SP3PTMHC05N1DJM0SK202H340MMKXKJ669T75G1ZA
'SPGZRWBAHX30M89KQHF1H38038PCCW5T03QHFS1F
'SP1WYHPJJVN3P0PS32BMF33P6WVVK1SNRRS28ZF0G
'SP2CHC7GM2Y8RMMSRC7DSDJW3Y7CNYC2Q9EVFSSHV
'SPRX8W53YWFKB61CAMRH4WPT3N1SD7H2KCZTH9Z3
'SP1E97Z89JTD454P1Y3N8AQPS3BZD2FVNXPP7Q8D3
'SP2CQH04HR10Q8K2BNWA0KM6ZKQ4KMX2CNR6WKFNH
'SPZNABG4GB3Z62R66V08WDWSQ4KPYRQ6EENKCYP2
'SP1GXYA95D82YSJTE0RNAAWM585D1MXM8669VTK0A
'SP1YXK49XRYHJWRQ4WM0KZ56Y9Q4NMBTSAX5FZ58A
'SP277HZA8AGXV42MZKDW5B2NNN61RHQ42MTAHVNB1
'SP3TNWFMV4PAH9Q5M5Z7XKN5Y7AM9QWEGAWK13K24
'SPNQ4E5VDBN8WZ9NFMYT0WRRHEQFJKF27Q99NJH3
'SP3JCN7W79KNRJBBPBRPKJZ7TRCVAK1NGV2FX4ZH
'SPQ2HN9TYF8ZYY9D3G45NGYA9GHA6QZHQ8AXF5QM
'SP2JMNKT6C7XT4KBQ0D7BZCXAH9P8R31Y1CRJ46PJ
'SP2MW8E4CRCPVDDZGAFSDGR3JVN3B9XFMYY29V8FK
'SP1CA9W3C35F6WH2MH1D5Z1XQG9595Q1C3P7Z2NYY
'SP34S80102KYXHC0C5VC3GDPDVY3WFG1G5G507Y0K
'SP19WSDJWTH4CW3YG554XS5CAXJJGAN83P8CFZ4K1
'SP1QHRPPTYM8DJS1ZSW9B497YNS7TK9P3PM38S9DB 'SP3HD6JF8N5214S5Q7GHXBQGKY6XJNTRH0DS6P6KY
'SP3M5HQJH19J6AKFME7N5BN3NWBXQGBVXKXS5WPRF
'SP2ZFHBEJNP50S1W9V0R540WNW0PK9VMEVMEH9W5Q
'SP1XPG9QFX5M95G36SGN9R8YJ4KJ0JB7ZXNH892N6
'SPZHPAQM60EAF9DGQQH42TMFG14B6Z3358F89RZ
'SP2CNKYPVW0DA3XE3SYXNNEZ7V3SF4HDC1NWMM6T7
'SP35MZZCEE48D69STMK7Z0WW2B0X9VM8AMGPHB9P7
'SP9884GP67ZPNF80Y6BK8EDE3GQXD09XZPERQDCH
'SP3G9BMCJ0858Y68MM35R6HA0WAZDNYXWZBN4RYK1
'SP3A09H1JEB4F85FZ6XEXRSZA210SC6RB7Q7V7DAF
'SP332H27QKKE0FR88A3DGYEGJ8GYGBSKN44F7A1W9
'SP13W5X7BGZT6T6FVQCK51EX7A4S7P34CPSTFHQTB
'SP1A5DS6DR56A9THKMGCXMRRDYNJZHE8RM7Z543CA
'SP1M8DY6T039YCZADJ0B7W00EZ0AH0R6G96KPRKBE
'SPPT6DNNC9KQW9MXNYTX4FH3CJXWQP90E5B6K64G
'SP35H1654R6R5S3SRN8AYD6BP9V65XSCFJXM12GP5
'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV
'SP1GA81MSSVZ47HVCDP4YFWJBM8KXCCJGWKBWH85F
'SP319BYQW8B8Q05FSW5Z130H1KTFJ58XMP789NTNV
'SP624CC9MSWX8SV0KX02EK30AFDNT0MSPT42XG3X
'SPV8VTTRB0HC8X9P2V108DH0CMRWNEHN4Y4DT77J
'SP39BPTTNQYCWCR5GC9BYG464VX370TG2A3YWA6Q6
'SP3ZQ324JA8CPZ5X38S7Q7ZCC0MM9F3PKRDJA0PC3
'SPYKYZ9HRVR27JNJ3N59JY4MEKVZW482MZRGMTD4
'SP3A5VJWA3CH4BM7W08APVJKJ8MQ7PXXFACWAYA2J
'SP256M51SYG7NETXYAF3BPBRCW3NC3T73CKD685V5 'SP1HN3TYFGVH2VG8S9H1PJ4WWH9TBV8G42SFJ70R 'SP22S0FFNGD7VV024X0KQ5CJPAB540KJ554KTA7XP
'SP3CXP82SP2M920C5XX42RMAJ3Y6FS0KS5ZK1N1BC
'SP1631M3B9XR9QP5SZ9K80TWBP6K9K28KPG8E2YTV
'SP129SXC2YE4VM9ZXWXF1WSRT8M5BGAEZ0PQK685D
'SP36NC0KX6RZGPQXR73AMW8R0CXXHS06DRM487A5G
'SP1HDNT0Q0A6W5WH70XF112E0B1GDGFMWN4E7HQEG 'SP3E209EA5Y1ZEXDS08CQ65Z5EFB4D3802Z6XPK1V 'SPCCD39S456K1KE2K11TBQY42F2TNST6AE0K2FBE 'SP3NTSJV76B8PZP97FY30HJGC37JAZVA5B39WJJKX 'SP1NCYAM5CVNZ5CC1YMDEKEXCAX6XB5QGMEX46GHP
'SP2K143V9EAP3BSXWHZFJ5PH9R2BXP2Z38SVDW19M
'SP1934QK1ZXGCEBB3MN9Y0FNR20GMDWM3Y5P5VV5
'SP2GYREEJC2DQJAWCXHKJ4A761Q5SZSXHA97ZSGSY
'SP2E4HAQW0EPMPCP58H2R2GTY17KHDG3YNCNMYBQG
'SP2069715QFEA9GK8Q2E7QREFABGKRP78C08NTDTK
'SP3PF9HCG28S3J9S2PER6TV8AEATD1YVCNBKYDJ0P
'SP23Z3QX3CPAF7ARD2N1YP4BR5ATZW9X2Z6J0740J
'SPMPV5BSPVN9E287S0XEV8T39W9BPNDRGTM2KA5S
'SP26BGW8S8J4PZRWAR0YFDPY21T1EFZ39FBMKTHC9
'SP77HNCX8KTBFTVKY6B40YAVS79GNA8BKQ84RV02
'SP256M51SYG7NETXYAF3BPBRCW3NC3T73CKD685V5
'SP3B9F51J3PC2WMYZXFQB1NX29TTMSVCARWN2TWBJ
'SP2WEMBJCH8V5QVKXJGM7D1Z201ZM8AWBW6J3YG1C
'SP302YBD113HAKPSQ3X46KQ3KS48XH6W5T7NRW9JM
'SPBF5K5X0CB0SSCQQKNJTP388SKK0SV9WKG5KZVX
'SPF4FR0X9Q4PAF6KENDD3NVAGQTM8A830A4F96YG
'SP38CGR9HQMP2PCZ663HAC2X6RD7E2PCV3DSFQ7HJ
'SP3HX7TQRWJGE08G5KWSABQ3CW38X90RY9AJ8899A
'SP23B3GJ1AZ95NAGZ38P6RJ6P78MFPGQE3BP8EEW4
'SP2F2KH0RVX6GF1Y9FWMMSR9RHG0TW3NN72D724NX
'SP1PKK6KJPM826D0X6AMCJ63KEH2M456M4T22WAPQ
'SPC7CD8S84AYZA86EK0AQTHAE86MJ8235KC3W3JN
'SP1GA81MSSVZ47HVCDP4YFWJBM8KXCCJGWKBWH85F
'SPZ99H1N8WFX7C3K3F23B9GNB9FJN4YAQW574NV5
'SP1B8QH0AQ2EPAK4W7PCDANEXJZ8YGZAG129B4F7Y
'SPQJN9008GBDXCPVS2CZSPXAPYV8251GZX1GX64R
'SP27SCHQXMV5NN3QCG973K3EKDRNJQQAS9XFZCD85
'SPC7CD8S84AYZA86EK0AQTHAE86MJ8235KC3W3JN
'SP3AZCSV0TWMR4V26TR1KJMY273FP2HRCDC2TJ79R
'SP71N7X6G8KYGQPHZW7TB4PD1JZ6ND9AESF9JPZ8
'SP1RPD165KJG3EKSFXE6MW36XFC3R31XX8XQEBAWV
'SP3VB8JXCGQCKR2NP9SE0D4W28TZ2AMF6TBVQ3EQA
'SP1E4798MP7RNHPVSBM954MSS5EJNM1AC3R53DC31
'SPJDY7Y2DJ0DM5G3WY6W6XR769VCBX5KYNX5AKMK
'SP2SDB5X6WNF9VZ8ZRC2JPR5FK4CQJPTQNXVFDHV7
'SP3HXQ07XY5MM2R88YNA05VM5YWZW1HJFH2YBNPB1
'SP8JVD8G9RRXPWF13STYZSJDDP25WSM8GWB46MAX
'SP2E852RZJ5QX4ASNGT1N1Q1A7Z3Y1MZWSHQK0MEB
'SP2Y12RYGKXBKEJY7G2BEVD35EFE9XMF8A3EJSVEH
'SPY11X2CFKJ9JG213HJP1Z4JFT2H88079MQFW2MS
'SP20ZAVGZ8QT6SEGWD3XD94NXZ3TA6T2KSKQYVJPA
'SP5KEYTM4GCEPXJ7T3QD58TJNSMM4Y12H2ABA2J0
'SPN9SQPATME5FN0JGHHGP9MW1WVW26663D5YN2SS
'SP3W23AJE2FEJN3R9ZPCS1QZEGRZQ86A4810H9HSQ
'SP3H60ZDQ67QFYRDCJ2GR5BRSZM7WTJ7987KK7K5M
'SP114AGFYAP6V5BGR3ZDH4PWWFQ8V14DYRP245V4G
'SP1GNB1KSWAB2SK9GWZ9A1R8HSYKWKBBQ40QP240F
'SP7NHV7JG5H61HD6RHM1E82X1P2AXXXB1PGCXR4C
))
(define-map token-count principal uint)

;; Constants
(define-constant contract-owner tx-sender)
(define-constant deploy-height block-height)
(define-constant btc-badgers-nft-limit u2100)
(define-constant btc-badgers-first-mint-limit u1050)
(define-constant white-list-limit u525)
(define-constant white-list-over-block-height u36456)
(define-constant first-public-mint-over-block-height u40776)
(define-constant mint-price-stx u69000000)
(define-constant mint-price-mia u5200)
(define-constant mint-commission-mia u260)
(define-constant commission-address-stxnft 'SP207ESW7AKHTPRYAAD9QP8Q1TE1F57D2S8RGPJCC)
(define-constant commission-amount u100)
(define-constant LOOKUPS (list "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12" "13" "14" "15" "16" "17" "18" "19" "20"
"21" "22" "23" "24" "25" "26" "27" "28" "29" "30" "31" "32" "33" "34" "35" "36" "37" "38" "39" "40" "41" "42" "43" "44" "45" "46"
"47" "48" "49" "50" "51" "52" "53" "54" "55" "56" "57" "58" "59" "60" "61" "62" "63" "64" "65" "66" "67" "68" "69" "70" "71" "72"
"73" "74" "75" "76" "77" "78" "79" "80" "81" "82" "83" "84" "85" "86" "87" "88" "89" "90" "91" "92" "93" "94" "95" "96" "97" "98"
"99" "100" "101" "102" "103" "104" "105" "106" "107" "108" "109" "110" "111" "112" "113" "114" "115" "116" "117" "118" "119" "120"
"121" "122" "123" "124" "125" "126" "127" "128" "129" "130" "131" "132" "133" "134" "135" "136" "137" "138" "139" "140" "141" "142"
"143" "144" "145" "146" "147" "148" "149" "150" "151" "152" "153" "154" "155" "156" "157" "158" "159" "160" "161" "162" "163" "164"
"165" "166" "167" "168" "169" "170" "171" "172" "173" "174" "175" "176" "177" "178" "179" "180" "181" "182" "183" "184" "185" "186"
"187" "188" "189" "190" "191" "192" "193" "194" "195" "196" "197" "198" "199" "200" "201" "202" "203" "204" "205" "206" "207" "208"
"209" "210" "211" "212" "213" "214" "215" "216" "217" "218" "219" "220" "221" "222" "223" "224" "225" "226" "227" "228" "229" "230"
"231" "232" "233" "234" "235" "236" "237" "238" "239" "240" "241" "242" "243" "244" "245" "246" "247" "248" "249" "250" "251" "252"
"253" "254" "255" "256" "257" "258" "259" "260" "261" "262" "263" "264" "265" "266" "267" "268" "269" "270" "271" "272" "273" "274"
"275" "276" "277" "278" "279" "280" "281" "282" "283" "284" "285" "286" "287" "288" "289" "290" "291" "292" "293" "294" "295" "296"
"297" "298" "299" "300" "301" "302" "303" "304" "305" "306" "307" "308" "309" "310" "311" "312" "313" "314" "315" "316" "317" "318"
"319" "320" "321" "322" "323" "324" "325" "326" "327" "328" "329" "330" "331" "332" "333" "334" "335" "336" "337" "338" "339" "340"
"341" "342" "343" "344" "345" "346" "347" "348" "349" "350" "351" "352" "353" "354" "355" "356" "357" "358" "359" "360" "361" "362"
"363" "364" "365" "366" "367" "368" "369" "370" "371" "372" "373" "374" "375" "376" "377" "378" "379" "380" "381" "382" "383" "384"
"385" "386" "387" "388" "389" "390" "391" "392" "393" "394" "395" "396" "397" "398" "399" "400" "401" "402" "403" "404" "405" "406"
"407" "408" "409" "410" "411" "412" "413" "414" "415" "416" "417" "418" "419" "420" "421" "422" "423" "424" "425" "426" "427" "428"
"429" "430" "431" "432" "433" "434" "435" "436" "437" "438" "439" "440" "441" "442" "443" "444" "445" "446" "447" "448" "449" "450"
"451" "452" "453" "454" "455" "456" "457" "458" "459" "460" "461" "462" "463" "464" "465" "466" "467" "468" "469" "470" "471" "472"
"473" "474" "475" "476" "477" "478" "479" "480" "481" "482" "483" "484" "485" "486" "487" "488" "489" "490" "491" "492" "493" "494"
"495" "496" "497" "498" "499" "500" "501" "502" "503" "504" "505" "506" "507" "508" "509" "510" "511" "512" "513" "514" "515" "516"
"517" "518" "519" "520" "521" "522" "523" "524" "525" "526" "527" "528" "529" "530" "531" "532" "533" "534" "535" "536" "537" "538"
"539" "540" "541" "542" "543" "544" "545" "546" "547" "548" "549" "550" "551" "552" "553" "554" "555" "556" "557" "558" "559" "560"
"561" "562" "563" "564" "565" "566" "567" "568" "569" "570" "571" "572" "573" "574" "575" "576" "577" "578" "579" "580" "581" "582"
"583" "584" "585" "586" "587" "588" "589" "590" "591" "592" "593" "594" "595" "596" "597" "598" "599" "600" "601" "602" "603" "604"
"605" "606" "607" "608" "609" "610" "611" "612" "613" "614" "615" "616" "617" "618" "619" "620" "621" "622" "623" "624" "625" "626"
"627" "628" "629" "630" "631" "632" "633" "634" "635" "636" "637" "638" "639" "640" "641" "642" "643" "644" "645" "646" "647" "648"
"649" "650" "651" "652" "653" "654" "655" "656" "657" "658" "659" "660" "661" "662" "663" "664" "665" "666" "667" "668" "669" "670"
"671" "672" "673" "674" "675" "676" "677" "678" "679" "680" "681" "682" "683" "684" "685" "686" "687" "688" "689" "690" "691" "692"
"693" "694" "695" "696" "697" "698" "699" "700" "701" "702" "703" "704" "705" "706" "707" "708" "709" "710" "711" "712" "713" "714"
"715" "716" "717" "718" "719" "720" "721" "722" "723" "724" "725" "726" "727" "728" "729" "730" "731" "732" "733" "734" "735" "736"
"737" "738" "739" "740" "741" "742" "743" "744" "745" "746" "747" "748" "749" "750" "751" "752" "753" "754" "755" "756" "757" "758"
"759" "760" "761" "762" "763" "764" "765" "766" "767" "768" "769" "770" "771" "772" "773" "774" "775" "776" "777" "778" "779" "780"
"781" "782" "783" "784" "785" "786" "787" "788" "789" "790" "791" "792" "793" "794" "795" "796" "797" "798" "799" "800" "801" "802"
"803" "804" "805" "806" "807" "808" "809" "810" "811" "812" "813" "814" "815" "816" "817" "818" "819" "820" "821" "822" "823" "824"
"825" "826" "827" "828" "829" "830" "831" "832" "833" "834" "835" "836" "837" "838" "839" "840" "841" "842" "843" "844" "845" "846"
"847" "848" "849" "850" "851" "852" "853" "854" "855" "856" "857" "858" "859" "860" "861" "862" "863" "864" "865" "866" "867" "868"
"869" "870" "871" "872" "873" "874" "875" "876" "877" "878" "879" "880" "881" "882" "883" "884" "885" "886" "887" "888" "889" "890"
"891" "892" "893" "894" "895" "896" "897" "898" "899" "900" "901" "902" "903" "904" "905" "906" "907" "908" "909" "910" "911" "912"
"913" "914" "915" "916" "917" "918" "919" "920" "921" "922" "923" "924" "925" "926" "927" "928" "929" "930" "931" "932" "933" "934"
"935" "936" "937" "938" "939" "940" "941" "942" "943" "944" "945" "946" "947" "948" "949" "950" "951" "952" "953" "954" "955" "956"
"957" "958" "959" "960" "961" "962" "963" "964" "965" "966" "967" "968" "969" "970" "971" "972" "973" "974" "975" "976" "977" "978"
"979" "980" "981" "982" "983" "984" "985" "986" "987" "988" "989" "990" "991" "992" "993" "994" "995" "996" "997" "998" "999" "1000"
"1001" "1002" "1003" "1004" "1005" "1006" "1007" "1008" "1009" "1010" "1011" "1012" "1013" "1014" "1015" "1016" "1017" "1018" "1019"
"1020" "1021" "1022" "1023" "1024" "1025" "1026" "1027" "1028" "1029" "1030" "1031" "1032" "1033" "1034" "1035" "1036" "1037" "1038"
"1039" "1040" "1041" "1042" "1043" "1044" "1045" "1046" "1047" "1048" "1049" "1050" "1051" "1052" "1053" "1054" "1055" "1056" "1057"
"1058" "1059" "1060" "1061" "1062" "1063" "1064" "1065" "1066" "1067" "1068" "1069" "1070" "1071" "1072" "1073" "1074" "1075" "1076"
"1077" "1078" "1079" "1080" "1081" "1082" "1083" "1084" "1085" "1086" "1087" "1088" "1089" "1090" "1091" "1092" "1093" "1094" "1095"
"1096" "1097" "1098" "1099" "1100" "1101" "1102" "1103" "1104" "1105" "1106" "1107" "1108" "1109" "1110" "1111" "1112" "1113" "1114"
"1115" "1116" "1117" "1118" "1119" "1120" "1121" "1122" "1123" "1124" "1125" "1126" "1127" "1128" "1129" "1130" "1131" "1132" "1133"
"1134" "1135" "1136" "1137" "1138" "1139" "1140" "1141" "1142" "1143" "1144" "1145" "1146" "1147" "1148" "1149" "1150" "1151" "1152"
"1153" "1154" "1155" "1156" "1157" "1158" "1159" "1160" "1161" "1162" "1163" "1164" "1165" "1166" "1167" "1168" "1169" "1170" "1171"
"1172" "1173" "1174" "1175" "1176" "1177" "1178" "1179" "1180" "1181" "1182" "1183" "1184" "1185" "1186" "1187" "1188" "1189" "1190"
"1191" "1192" "1193" "1194" "1195" "1196" "1197" "1198" "1199" "1200" "1201" "1202" "1203" "1204" "1205" "1206" "1207" "1208" "1209"
"1210" "1211" "1212" "1213" "1214" "1215" "1216" "1217" "1218" "1219" "1220" "1221" "1222" "1223" "1224" "1225" "1226" "1227" "1228"
"1229" "1230" "1231" "1232" "1233" "1234" "1235" "1236" "1237" "1238" "1239" "1240" "1241" "1242" "1243" "1244" "1245" "1246" "1247"
"1248" "1249" "1250" "1251" "1252" "1253" "1254" "1255" "1256" "1257" "1258" "1259" "1260" "1261" "1262" "1263" "1264" "1265" "1266"
"1267" "1268" "1269" "1270" "1271" "1272" "1273" "1274" "1275" "1276" "1277" "1278" "1279" "1280" "1281" "1282" "1283" "1284" "1285"
"1286" "1287" "1288" "1289" "1290" "1291" "1292" "1293" "1294" "1295" "1296" "1297" "1298" "1299" "1300" "1301" "1302" "1303" "1304"
"1305" "1306" "1307" "1308" "1309" "1310" "1311" "1312" "1313" "1314" "1315" "1316" "1317" "1318" "1319" "1320" "1321" "1322" "1323"
"1324" "1325" "1326" "1327" "1328" "1329" "1330" "1331" "1332" "1333" "1334" "1335" "1336" "1337" "1338" "1339" "1340" "1341" "1342"
"1343" "1344" "1345" "1346" "1347" "1348" "1349" "1350" "1351" "1352" "1353" "1354" "1355" "1356" "1357" "1358" "1359" "1360" "1361"
"1362" "1363" "1364" "1365" "1366" "1367" "1368" "1369" "1370" "1371" "1372" "1373" "1374" "1375" "1376" "1377" "1378" "1379" "1380"
"1381" "1382" "1383" "1384" "1385" "1386" "1387" "1388" "1389" "1390" "1391" "1392" "1393" "1394" "1395" "1396" "1397" "1398" "1399"
"1400" "1401" "1402" "1403" "1404" "1405" "1406" "1407" "1408" "1409" "1410" "1411" "1412" "1413" "1414" "1415" "1416" "1417" "1418"
"1419" "1420" "1421" "1422" "1423" "1424" "1425" "1426" "1427" "1428" "1429" "1430" "1431" "1432" "1433" "1434" "1435" "1436" "1437"
"1438" "1439" "1440" "1441" "1442" "1443" "1444" "1445" "1446" "1447" "1448" "1449" "1450" "1451" "1452" "1453" "1454" "1455" "1456"
"1457" "1458" "1459" "1460" "1461" "1462" "1463" "1464" "1465" "1466" "1467" "1468" "1469" "1470" "1471" "1472" "1473" "1474" "1475"
"1476" "1477" "1478" "1479" "1480" "1481" "1482" "1483" "1484" "1485" "1486" "1487" "1488" "1489" "1490" "1491" "1492" "1493" "1494"
"1495" "1496" "1497" "1498" "1499" "1500" "1501" "1502" "1503" "1504" "1505" "1506" "1507" "1508" "1509" "1510" "1511" "1512" "1513"
"1514" "1515" "1516" "1517" "1518" "1519" "1520" "1521" "1522" "1523" "1524" "1525" "1526" "1527" "1528" "1529" "1530" "1531" "1532"
"1533" "1534" "1535" "1536" "1537" "1538" "1539" "1540" "1541" "1542" "1543" "1544" "1545" "1546" "1547" "1548" "1549" "1550" "1551"
"1552" "1553" "1554" "1555" "1556" "1557" "1558" "1559" "1560" "1561" "1562" "1563" "1564" "1565" "1566" "1567" "1568" "1569" "1570"
"1571" "1572" "1573" "1574" "1575" "1576" "1577" "1578" "1579" "1580" "1581" "1582" "1583" "1584" "1585" "1586" "1587" "1588" "1589"
"1590" "1591" "1592" "1593" "1594" "1595" "1596" "1597" "1598" "1599" "1600" "1601" "1602" "1603" "1604" "1605" "1606" "1607" "1608"
"1609" "1610" "1611" "1612" "1613" "1614" "1615" "1616" "1617" "1618" "1619" "1620" "1621" "1622" "1623" "1624" "1625" "1626" "1627"
"1628" "1629" "1630" "1631" "1632" "1633" "1634" "1635" "1636" "1637" "1638" "1639" "1640" "1641" "1642" "1643" "1644" "1645" "1646"
"1647" "1648" "1649" "1650" "1651" "1652" "1653" "1654" "1655" "1656" "1657" "1658" "1659" "1660" "1661" "1662" "1663" "1664" "1665"
"1666" "1667" "1668" "1669" "1670" "1671" "1672" "1673" "1674" "1675" "1676" "1677" "1678" "1679" "1680" "1681" "1682" "1683" "1684"
"1685" "1686" "1687" "1688" "1689" "1690" "1691" "1692" "1693" "1694" "1695" "1696" "1697" "1698" "1699" "1700" "1701" "1702" "1703"
"1704" "1705" "1706" "1707" "1708" "1709" "1710" "1711" "1712" "1713" "1714" "1715" "1716" "1717" "1718" "1719" "1720" "1721" "1722"
"1723" "1724" "1725" "1726" "1727" "1728" "1729" "1730" "1731" "1732" "1733" "1734" "1735" "1736" "1737" "1738" "1739" "1740" "1741"
"1742" "1743" "1744" "1745" "1746" "1747" "1748" "1749" "1750" "1751" "1752" "1753" "1754" "1755" "1756" "1757" "1758" "1759" "1760"
"1761" "1762" "1763" "1764" "1765" "1766" "1767" "1768" "1769" "1770" "1771" "1772" "1773" "1774" "1775" "1776" "1777" "1778" "1779"
"1780" "1781" "1782" "1783" "1784" "1785" "1786" "1787" "1788" "1789" "1790" "1791" "1792" "1793" "1794" "1795" "1796" "1797" "1798"
"1799" "1800" "1801" "1802" "1803" "1804" "1805" "1806" "1807" "1808" "1809" "1810" "1811" "1812" "1813" "1814" "1815" "1816" "1817"
"1818" "1819" "1820" "1821" "1822" "1823" "1824" "1825" "1826" "1827" "1828" "1829" "1830" "1831" "1832" "1833" "1834" "1835" "1836"
"1837" "1838" "1839" "1840" "1841" "1842" "1843" "1844" "1845" "1846" "1847" "1848" "1849" "1850" "1851" "1852" "1853" "1854" "1855"
"1856" "1857" "1858" "1859" "1860" "1861" "1862" "1863" "1864" "1865" "1866" "1867" "1868" "1869" "1870" "1871" "1872" "1873" "1874"
"1875" "1876" "1877" "1878" "1879" "1880" "1881" "1882" "1883" "1884" "1885" "1886" "1887" "1888" "1889" "1890" "1891" "1892" "1893"
"1894" "1895" "1896" "1897" "1898" "1899" "1900" "1901" "1902" "1903" "1904" "1905" "1906" "1907" "1908" "1909" "1910" "1911" "1912"
"1913" "1914" "1915" "1916" "1917" "1918" "1919" "1920" "1921" "1922" "1923" "1924" "1925" "1926" "1927" "1928" "1929" "1930" "1931"
"1932" "1933" "1934" "1935" "1936" "1937" "1938" "1939" "1940" "1941" "1942" "1943" "1944" "1945" "1946" "1947" "1948" "1949" "1950"
"1951" "1952" "1953" "1954" "1955" "1956" "1957" "1958" "1959" "1960" "1961" "1962" "1963" "1964" "1965" "1966" "1967" "1968" "1969"
"1970" "1971" "1972" "1973" "1974" "1975" "1976" "1977" "1978" "1979" "1980" "1981" "1982" "1983" "1984" "1985" "1986" "1987" "1988"
"1989" "1990" "1991" "1992" "1993" "1994" "1995" "1996" "1997" "1998" "1999" "2000" "2001" "2002" "2003" "2004" "2005" "2006" "2007"
"2008" "2009" "2010" "2011" "2012" "2013" "2014" "2015" "2016" "2017" "2018" "2019" "2020" "2021" "2022" "2023" "2024" "2025" "2026"
"2027" "2028" "2029" "2030" "2031" "2032" "2033" "2034" "2035" "2036" "2037" "2038" "2039" "2040" "2041" "2042" "2043" "2044" "2045"
"2046" "2047" "2048" "2049" "2050" "2051" "2052" "2053" "2054" "2055" "2056" "2057" "2058" "2059" "2060" "2061" "2062" "2063" "2064"
"2065" "2066" "2067" "2068" "2069" "2070" "2071" "2072" "2073" "2074" "2075" "2076" "2077" "2078" "2079" "2080" "2081" "2082" "2083"
"2084" "2085" "2086" "2087" "2088" "2089" "2090" "2091" "2092" "2093" "2094" "2095" "2096" "2097" "2098" "2099" "2100"
))

;; Errors
(define-constant ERR-ALL-MINTED u101)
(define-constant ERR-MIA-TRANSFER (err u102))
(define-constant ERR-NOT-AUTHORIZED (err u103))
(define-constant ERR-STX-TRANSFER (err u104))
(define-constant ERR-ALL-FIRST-PUBLIC-MINTED (err u105))
(define-constant ERR-ALL-WHITELIST-MINTED (err u106))

;; Variables
(define-data-var last-id uint u0)
(define-data-var ipfs-root (string-ascii 102) "ipfs://ipfs/QmYcrELFT5c9pjSygFFXk8jfVMHB5cBoWJDGafbHbATvrP/bitcoin_badger_")

;; Read Only
(define-read-only (white-list)
  (ok (var-get white-list-wallets))
)

;; Get Lookup
(define-read-only (lookup (uid uint))
  (ok (unwrap-panic (element-at LOOKUPS uid)))
)

;; Get Balance
(define-read-only (get-balance (account principal))
  (default-to u0 (map-get? token-count account))
)

;; SIP009
(define-read-only (get-last-token-id)
  (ok (var-get last-id))
)

(define-read-only (get-owner (id uint))
  (ok (nft-get-owner? btc-badgers-nft id))
)

(define-read-only (get-token-uri (token-id uint))
  (ok (some (concat (concat (var-get ipfs-root) (unwrap-panic (lookup token-id))) ".json")))
)

(define-public (transfer (id uint) (sender principal) (recipient principal))
  (begin
    (asserts! (is-eq tx-sender sender) (err u103))
    (trnsfr id sender recipient)
  )
)

(define-private (trnsfr (id uint) (sender principal) (recipient principal))
  (match (nft-transfer? btc-badgers-nft id sender recipient)
    success
      (let (
          (sender-balance (get-balance sender))
          (recipient-balance (get-balance recipient))
        )
        (map-set token-count sender (- sender-balance u1))
        (map-set token-count recipient (+ sender-balance u1))
        (ok success)
      )
    error
      (err error)
  )
)

;; Start Minting Logic
;; Check If White List Is Over & Where To Mint - BTC/Byz | STXNFT
;; Badgers & Byzantion *always* set mint-in-mia bool to FALSE
;; STXNFT *always* set mint-mia bool to TRUE
(define-public (claim (mint-in-mia bool))
  (if (< block-height white-list-over-block-height)
    (white-list-mint tx-sender mint-in-mia)
    (public-mint tx-sender mint-in-mia)
  )
)

;; White List Mint Function
;; Check That All White List NFTs Haven't Been Minted
(define-private (white-list-mint (new-owner principal) (mint-in-mia bool))
  (begin
    (asserts! (< (var-get last-id) white-list-limit) (err u106))
    (public-mint new-owner mint-in-mia)
  )
)

;; Public Mint Function
;; Whollleee lotta code
(define-private (public-mint (new-owner principal) (mint-in-mia bool))
  (let (
    (next-id (+ u1 (var-get last-id)))
    )
    (asserts! (< (var-get last-id) btc-badgers-nft-limit) (err u101))
    (begin
      (if (< block-height first-public-mint-over-block-height)
          (asserts! (< (var-get last-id) btc-badgers-first-mint-limit) (err u105))
          true
      )
      (if mint-in-mia
        (begin
          (unwrap! (contract-call? 'SP466FNC0P7JWTNM2R9T199QRZN1MYEDTAR0KP27.miamicoin-token transfer mint-price-mia tx-sender contract-owner (some 0x00)) (err u102))
          (unwrap! (contract-call? 'SP466FNC0P7JWTNM2R9T199QRZN1MYEDTAR0KP27.miamicoin-token transfer mint-commission-mia tx-sender contract-owner (some 0x00)) (err u102))
        )
        (unwrap! (stx-transfer? mint-price-stx tx-sender contract-owner) (err u104))
      )
      (try! (nft-mint? btc-badgers-nft next-id new-owner))
      (map-set token-count new-owner (+ u1 (get-balance new-owner)))
      (var-set last-id next-id)
      (ok u1)
    )
  )
)

;; Mint 2
(define-public (claim-two (mint-in-mia bool))
  (begin
    (try! (claim mint-in-mia))
    (try! (claim mint-in-mia))
    (ok true)
  )
)

;; Mint 4
(define-public (claim-four (mint-in-mia bool))
  (begin
    (try! (claim mint-in-mia))
    (try! (claim mint-in-mia))
    (try! (claim mint-in-mia))
    (try! (claim mint-in-mia))
    (ok true)
  )
)