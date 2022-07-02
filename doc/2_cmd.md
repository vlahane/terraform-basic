## Basic commands 

### check if we have valid tf files 
```
terraform validate
```
### Generate plan before deploying 
```
terraform plan -out test.tfplan
```
### Deploy the plan generated in prev command
```
terraform apply "test.tfplan"
```

### shows what resources deployed 
```
terraform show
```
### shows only output values we have in tf file
```
terraform output
```
### terraform destroy what we have deployed using appluy command 
```
terraform destroy
```


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


### terrform state commands
```
list - list objects in state data
show - show details about an object
mv- move an item in state 
rm - remove an item from state
pull - output current state to stdout
push - update remote state from local
```


