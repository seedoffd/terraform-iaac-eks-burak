resource "null_resource" "login" {
  provisioner "local-exec" {
    command = "aws eks --region us-west-2 update-kubeconfig --name dev-cluster"
    
  }
}
