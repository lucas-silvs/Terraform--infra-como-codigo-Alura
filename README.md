# Terraform--infra-como-codigo-Alura

Repositório para o projeto desenvolvido durante o curso da Alura - Infraestrutura como código: preparando máquinas na AWS com Ansible e Terraform

## Requisitos

- AWS
- Terraform
- Ansible
- Python

## Criando Recursos na Cloud AWS

Ao finalizar o arquivo Terraform, antes de criar os recursos
na nuvem é necessário baixar os plugins do provedor cloud
desejado. Para isso, execute o comando abaixo

```
terraform init
```

Após finalizar o download dos plugins, podemos executar o comando abaixo para listar o que será criado na AWS:

```
terraform plan
```

Após validar os recursos criado, execute o comando:

```
terraform apply
```
