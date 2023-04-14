resource "helm_release" "cilium" {
  repository = "https://helm.cilium.io/"
  chart      = "cilium"
  version    = "1.13.1"
  name       = "cilium"
  namespace  = "kube-system"

  set {
    name  = "aksbyocni.enabled"
    value = true
  }

  set {
    name  = "nodeinit.enabled"
    value = true
  }

  set {
    name  = "hubble.relay.enabled"
    value = true
  }

  set {
    name  = "hubble.ui.enabled"
    value = true
  }
}
