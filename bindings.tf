resource "kubernetes_role_binding" "this" {
  for_each = var.roles

  metadata {
    name      = var.username
    namespace = each.key
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = each.value
  }
  subject {
    kind = "User"
    name = var.username
  }
}
