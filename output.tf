output "region" {
  value = "${var.region}"
}

output "cluster_name" {
  value = "${var.cluster_name}"
}

output "cluster_id" {
  description = "The name/id of the EKS cluster."
  value       = element(concat(aws_eks_cluster.this.*.id, list("")), 0)
}

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster."
  value       = element(concat(aws_eks_cluster.this.*.arn, list("")), 0)
}

output "cluster_endpoint" {
  description = "The endpoint for your EKS Kubernetes API."
  value       = element(concat(aws_eks_cluster.this.*.endpoint, list("")), 0)
}

output "cluster_version" {
  description = "The Kubernetes server version for the EKS cluster."
  value       = element(concat(aws_eks_cluster.this[*].version, list("")), 0)
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster."
  value       = local.cluster_security_group_id
}