Steps

1. Create an account in Hashicorp Terraform. This is to create workspace and store state.
2. Create a digitalocean account and create a token
3. Store the token in environment variable TF_DO_TOKEN

Terraform Commands

Run this command to check the plan

```
terraform plan -var "token=$env:TF_DO_TOKEN"
```

Run this command to apply the changes

```
terraform apply -var "token=$env:TF_DO_TOKEN"
```

This Configuration creates a droplet in digital ocean with 2CPU in Bangalore location.
