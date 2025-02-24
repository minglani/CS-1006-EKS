module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.19.1"

  cluster_name    = local.cluster_name
  cluster_version = "1.27"

  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access  = true

 eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"

 }

  eks_managed_node_groups = {
    One = {
      name = "master-node-group"
      instance_type = ["t2.medium"] 
      min_size     = 1
      max_size     = 3
      desired_size = 2
    
      

    }

    Two = {
      name = "worker-node-group"
      instance_type = ["t2.medium"] 
      min_size     = 1
      max_size     = 3
      desired_size = 2
      

    }
  }

}