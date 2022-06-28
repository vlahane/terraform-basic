# basic commands 
terraform init
terraform validate

# We will pass our variables at the command line
# Passing var values
```
-var flag
-var-file flag
terraform.tfvars
terraform.tfvars.json
.auto.tfvars
.auto.tfvars.json
TF_VAR_
```
```
terraform plan -var=type="web-app" -out test.tfplan
```

# Now we can run plan without all that extra stuff
terraform validate 
terraform plan -out test.tfplan
terraform apply "test.tfplan"

terraform show
terraform output

# terraform destroy
terraform destroy

