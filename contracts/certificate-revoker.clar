(define-map revoked-certificates
  {certificate-id: (buff 32)}
  {revoker: principal, reason: (buff 100)})

(define-public (revoke-certificate (certificate-id (buff 32)) (reason (buff 100)))
  (begin
    ;; Ensure the certificate is not already revoked
    (asserts! (is-none (map-get? revoked-certificates {certificate-id: certificate-id}))
              (err u"Certificate already revoked"))
    ;; Record the revocation
    (map-set revoked-certificates
             {certificate-id: certificate-id}
             {revoker: tx-sender, reason: reason})
    (ok u"Certificate revoked successfully")))

(define-read-only (is-certificate-revoked (certificate-id (buff 32)))
  (is-some (map-get? revoked-certificates {certificate-id: certificate-id})))
