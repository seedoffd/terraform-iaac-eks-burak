environment = "prod-eu-london"
s3_folder_project = "application"          #Will be used to set backend.tf
s3_folder_type = "state"                   #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf
instance_type = "m4.large"
asg_max_size = "48" 
asg_desired_capacity = "3"
asg_min_size = "3"
cluster_version = "1.14"


# Mandatory changes per region
cluster_name = "prod-eu-london-cluster"
s3_bucket = "amazon-eks-prod-london-team4"        #Will be used to set backend.tf
s3_folder_region = "eu-west-2"             #Will be used to set backend.tf
region = "eu-west-2"
vpc_id = "vpc-ca45d3a2"
subnet1 = "subnet-78842002"
subnet2 = "subnet-a57893e9"
subnet3 = "subnet-6e52ca07"
