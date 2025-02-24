output "cluster_name" {
    description = "Amazon Web Service EKS Cluster Name"
    value = module.eks.cluster_name
}

output "Cluster_endpoint" {
    description = "Endpoint for AWS EKS"
    value = module.eks.cluster_endpoint
}


output "region" {
    description = "Amazon Web Service EKS Cluster Name"
    value = var.region
}


output "cluster_security_group_id" {
    description = "Security group ID for AWS EKS Cluster"
    value = module.eks.cluster_security_group_id
}

