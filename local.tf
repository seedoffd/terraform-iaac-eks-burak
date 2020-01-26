resource "null_resource" "login" {
    provisioner "local-exec" {
    command = "aws eks --region echo $region update-kubeconfig --name echo $cluster_name"    
  }
}
