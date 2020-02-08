environment = "qa"
s3_bucket = "amazon-eks-qa-team4"            #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-2"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf
vpc_id = "vpc-abb073c0"
subnet1 = "subnet-6ffd1604"
subnet2 = "subnet-c8f4d5b2"
subnet3 = "subnet-f51a93b9"
cluster_name = "qa-cluster"
instance_type = "m4.large"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"
region = "us-east-2"
