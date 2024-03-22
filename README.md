# Getting started

## Initialize TF project
```bash
$ tf init && tf fmt -recursive
```

## Deployment resources
```bash
# Requires docker 
$ ./scripts/create-containers
$ tf apply -var instance_password=<SET_YOUR_ENV_VAR_HERE> -var-file dev.tfvars
```