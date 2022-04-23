# CLI Commands

`terraform init` - initialize <br>
`terraform plan` - overview of the infrastructure <br>
`terraform apply` - apply changes <br> <br>

`terraform state list`  => show terraform states in the system  <br>
`terraform state show [state name]` => show state details  <br>
`terraform refresh` => reads the current settings from all managed remote objects and updates the Terraform state to match. <br>
`terraform apply` -refresh-only => same effect of refresh but recommened by terraform <br> <br>

`terraform destroy` => destroy the infrsatructure <br>
`terraform apply -destroy` => same as destroy <br>
`terraform plan --destroy` => check what happens if destroyed <br> <br>


Note: Use -auto-approve to ignore confirmation dialog <br>
Eg: terraform destroy  <br> <br>

`terraform fmt` - Format the script
