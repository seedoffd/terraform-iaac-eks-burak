output "cluster_name" {
  value = "${var.region}"
}

output "region" {
  value = "${var.cluster_name}"
}