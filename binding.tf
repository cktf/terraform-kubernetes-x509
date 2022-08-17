resource "kubernetes_role_binding" "this" {
  depends_on = [kubernetes_service_account.this]

  metadata {
    name      = "<USERNAME>"
    namespace = var.name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "edit"
  }
  subject {
    kind = "User"
    name = "<USERNAME>"
  }
}
