output "kubeconfig" {
  value = yamlencode({
    apiVersion = "v1"
    kind       = "Config"
    clusters = [{
      name = "default"
      cluster = {
        server                     = var.host
        certificate-authority-data = base64encode(var.ca_crt)
      }
    }]
    users = [{
      name = "default"
      user = {
        client-key-data         = base64encode(tls_private_key.this.private_key_pem)
        client-certificate-data = base64encode(kubernetes_certificate_signing_request_v1.this.certificate)
      }
    }]
    contexts = [{
      name = "default"
      context = {
        cluster   = "default"
        user      = "default"
        namespace = "default"
      }
    }]
    current-context = "default"
  })
  sensitive   = true
  description = "Kubernetes X.509 KUBECONFIG"
}
