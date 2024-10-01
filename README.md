# linuxtips-curso-containers-ecs-app
Repositório de exemplo de uma aplicação no ECS

# comandos terraform usados
terraform init -backend-config=environment/dev/backend.tfvars

terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars

terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars
