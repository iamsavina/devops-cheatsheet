# CLI Commands

terraform init - initialize
terraform plan - overview of the infrastructure
terraform apply - apply changes

terraform state list  => show terraform states in the system
terraform state show [state name] => show state details
terraform refresh => reads the current settings from all managed remote objects and updates the Terraform state to match.
terraform apply -refresh-only => same effect of refresh but recommened by terraform

terraform destroy => destroy the infrsatructure
terraform apply -destroy => same as destroy
terraform plan --destroy => check what happens if destroyed


Note: Use -auto-approve to ignore confirmation dialog
Eg: terraform destroy 

Terraform fmt - Format the script
