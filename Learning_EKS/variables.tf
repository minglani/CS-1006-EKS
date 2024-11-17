variable "region" {
  description = "AWS Region"
  type = string
  default = "us-east-1"
}

variable "clusterName" {
  description = "Name of the EKS Cluster"
  type = string
  default = "teleport-eks"
}
