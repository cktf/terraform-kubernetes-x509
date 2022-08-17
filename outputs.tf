output "kubeconfig" {
  depends_on = [kubernetes_namespace.this]

  value       = var.name
  sensitive   = false
  description = "Kubernetes X.509 KUBECONFIG"
}
