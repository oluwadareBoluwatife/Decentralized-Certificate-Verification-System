(define-map certificates
  {certificate-id: (buff 32)}
  {issuer: principal, recipient: principal, details: (buff 100)})

(define-public (issue-certificate (certificate-id (buff 32)) (recipient principal) (details (buff 100)))
  (begin
    ;; Ensure the certificate ID is unique
    (asserts! (is-none (map-get? certificates {certificate-id: certificate-id}))
              (err u"Certificate ID already exists"))
    ;; Save the certificate details in the map
    (map-set certificates
             {certificate-id: certificate-id}
             {issuer: tx-sender, recipient: recipient, details: details})
    (ok u"Certificate issued successfully")))

(define-read-only (get-certificate (certificate-id (buff 32)))
  (match (map-get? certificates {certificate-id: certificate-id})
    certificate (ok certificate)
    (err u"Certificate not found")))

