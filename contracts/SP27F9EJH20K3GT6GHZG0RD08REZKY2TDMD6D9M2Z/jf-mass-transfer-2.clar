(define-constant owner tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u101))
(define-public (jf-mass-transfer-1)
  (begin
    (asserts! (is-eq tx-sender owner) ERR-NOT-AUTHORIZED)
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u593))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u594))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u596))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u608))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u597))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u617))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u606))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u581))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u582))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u583))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u584))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u589))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u590))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u595))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u571))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u572))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u859))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u860))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u861))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u862))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u640))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u616))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u761))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u762))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u763))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u764))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u779))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u780))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u781))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u782))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u793))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u794))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u795))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u796))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u574))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u575))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u576))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u577))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u578))
    (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u579))
    (ok (try! (contract-call? 'SP27F9EJH20K3GT6GHZG0RD08REZKY2TDMD6D9M2Z.btc-badgers-v2 admin-mint-drop 'SP12Q3YS92YCJGJY1MQSABJZHDZ6X77QX1YG47KZV u580)))
  )
)