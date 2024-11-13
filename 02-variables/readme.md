Variables in Terraform
-----------------------
1st preferance is command line arguments
ex: terraform plan -var="instance_type=t2.small"

2nd Preferance is terraform.vars
instance_type="t2.small"

3rd preferance is environment variables
define env variable
export TF_VAR_instance_type="t2.small"