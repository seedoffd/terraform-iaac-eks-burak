resource "null_resource" "login" {
  depends_on = ["module.my-cluster"]
    provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
    }
    provisioner "local-exec" {
    command = "kubectl get nodes"
  }
}
