locals {
  name = "istio"

  default_helm_config = {
    name      = local.name
    namespace = "default" # change to namespace resources are being created it
    values    = []
    timeout   = "600"
    version   = "0.2.1"
  }

  helm_config = merge(
    local.default_helm_config,
    var.helm_config
  )

}
