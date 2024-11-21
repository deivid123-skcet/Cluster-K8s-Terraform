# Cluster Kubernetes com Terraform e kubespray

Ferramentas utilizada nesse projeto:

1 - Proxmox

2 - Jenkins

3 - Terraform

4 - Kubernetes(kubespray)

5 - Ansible

# Arquivos

provider.tf = Contém as informações de conexão com o proxmox
locals.tf = Contém as variaveis que serão utilizadas nos arquivos masters.tf e workers.tf
master.tf = Contém as informações e especificações dos nós master.
workers.tf = Contém as informações e especificações dos nós workers.
inventory.tf = Contém as informações para a criação do arquivo de inventario para o ansible.
inventory.tmpl = é o template que será preenchido com as informações extraidas do inventory.tf e criará o arquivo inventory.ini



# Como utilizar esse projeto

1 - O Mais importante desse projeto é ter o proxmox em algum computador pessoal, após isso é necessario configurar as credenciais para que o provider do terraform consiga efetuar a criação das vms.

2 - Link de como configurar o provider: https://registry.terraform.io/providers/Telmate/proxmox/latest/docs

3 - Confiurar um Node do Jenkins e nele precisa está instalado o terraform e ansible, o ansible é para que o kubespray possa ser executado.

4 - Após configuração do usuario e api token, é necessario pegar o usuario e api token e configurar na parte de variaveis globais do jenkins para que não tenhamos a necessidade de colocar usuario e senha no arquivo provider.tf, exemplo de onde cadastrar na imagem abaixo.

![Screenshot from 2024-11-20 22-04-37](https://github.com/user-attachments/assets/0164cbf1-03c2-467e-ab3d-69df2bddefe0)

5 - Agora o pipeline já pode ser construido no Jenkins, lembrando que você só precisa apontar o JenkinsFile dentro da pipeline, ele vai criar as VMS o arquivo de inventario com os Ips das VMS e seguir com a criação do Cluster Kubernetes.
