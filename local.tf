resource "null_resource" "login" {
  depends_on = [module.my-cluster]
    provisioner "local-exec" {
    command = "aws eks --region ${var.region} update-kubeconfig --name ${var.cluster_name}"
  }
    provisioner "local-exec" {
    command = "curl -LO https://storage.googleapis.com/kubernetes-release/release/${var.cluster_version}/bin/linux/amd64/kubectl"
  }
    provisioner "local-exec" {
    command = "sudo chmod +x kubectl"
  }
    provisioner "local-exec" {
    command = "mv kubectl /bin"
  }
    provisioner "local-exec" {
    command = "curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator"
  }
    provisioner "local-exec" {
    command = "sudo chmod +x aws-iam-authenticator"
  }
    provisioner "local-exec" {
    command = "sudo mv aws-iam-authenticator /bin"
  }
    provisioner "local-exec" {
    command = "kubectl get nodes"
  }
    provisioner "local-exec" {
    command = "kubectl get ns"
  }


}
