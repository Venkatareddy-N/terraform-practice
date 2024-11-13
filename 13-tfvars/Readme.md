Dev
====
mysql-dev
backend-dev
frontend-dev

mysql-dev.venkatswan.online
backend-dev.venkatswan.online
frontend-dev.venkatswan.online

PROD
====
mysql-prod
backend-prod
frontend-prod

mysql-prod.venkatswan.online
backend-prod.venkatswan.online
venkatswan.online

==========================================

terraform init -backend-config=dev/backend.tf - to initialise we need to specify backend.tf file for terraform init

terraform plan -var-file=dev/dev.tfvars - to specify extra var files to load

terraform apply -var-file=dev/dev.tfvars  -auto-approve 

terraform destroy -var-file=dev/dev.tfvars  -auto-approve  --> to destroy

PROD
====
terraform init -reconfigure -backend-config=prod/backend.tf   --> re-intialise from dev to prod

terraform apply -var-file=prod/prod.tfvars  -auto-approve

terraform destroy -var-file=prod/prod.tfvars  -auto-approve

Dev
===
terraform init -reconfigure -backend-config=dev/backend.tf   --> re-intialise from prod to dev

terraform destroy -var-file=dev/dev.tfvars  -auto-approve  --> to destroy
======================