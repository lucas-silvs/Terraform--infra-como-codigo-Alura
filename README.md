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

## Par de Chaves

É necessário cria um par de chaves para permitir a conexão SSH a instancia ec2 do curso. para isso deve criar
manualmente e adicionar a seguinte linha no arquivo Terraform:

```
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  key_name = "Nome_da_chave_criada" // adicionar linha para anexar par de chaves a instancia ec2

  tags = {
    Name = "ExampleAppServerInstance"
  }
```

Após criar o par de chaves e aplicar a alteração, será necessário executar o comando **terraform apply** novamente.

##Utilizando Ansible
Para executar o playbook Ansible, é necessário executar o comando abaixo:

```
ansible-playbook playbook.yml -u ubuntu --ssh-extra-args '-oHostKeyAlgorithms=+ssh-rsa -oPubkeyAcceptedKeyTypes=+ssh-rsa'  --private-key acesso-ec2.pem -i hosts.yml
```
