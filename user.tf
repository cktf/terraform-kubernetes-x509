resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "tls_cert_request" "this" {
  private_key_pem = tls_private_key.this.private_key_pem

  subject {
    common_name  = var.username
    organization = "default"
  }
}

resource "kubernetes_certificate_signing_request" "this" {
  metadata {
    name = var.username
  }
  spec {
    usages  = ["digital signature", "key encipherment", "client auth"]
    request = tls_cert_request.this.cert_request_pem
  }
  auto_approve = true
}
