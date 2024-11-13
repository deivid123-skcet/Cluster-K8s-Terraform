#masters

master_id_range = 800
master_cores = 2
master_sockets = 1
master_memory = 2048
master_naming = "k8s-master-demo"
master_disksize = "50G"
ciuser = "ubuntu"
master_network_range = 160 
master_nr = 3

#workers
worker_id_range = 700
worker_cores = 2
worker_sockets = 2
worker_memory = 2048
worker_naming = "k8s-worker-demo"
worker_disksize = "50G"
ssh_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDgjWD1KvLDTIlkMC5UVnOphz67PODRzTLUNp609bSzXV/+ZSNkmrhne5o8e48FjIiq82jyBNl79zGzf4uAmHORRdoXaoYv4unLyLuSrpx1motPDE1UA/HV/pTHjXMW3QsRonsEibd03dvGl5qI4m0wCv+R+f4hmrzccqEx9sGn37/IBm7sztkxpTIRVGUS2nsc2FfHR70UvEWLS0VSxjTpVUL3R7U1xU1VFNnrMzBbjegH92uVBSetaCX2jF9QtdGyCIE+92f+AW81wBC1lyH6PW7ItRYrkVC4qIrhxrHrloWOyemByjf5uvtI8HiBoQIWZYpwkZmUg1HzGRf1wbEljpSJkRpFWnffMQgVFQO1ZP+eI+gOUdPy+saaW9DjnSBNmLiun+yxiwqHy0aDkTcY3wbUZQEFjf0kDQFb2QDKide9AKkyzaOrp2xHoNajzl+B1BW1gb2bWqgfRCwFUBZFlWmNR8KtBGHU0NL7NMACziz3FLQmBz0J5th9H/b9GMM= deivi@DESKTOP-6PIL69R"
bridge_network = "vmbr0"
bridge_cidr_range = "192.168.18.0/24"
worker_network_range = 200 
target_node = "pve"
worker_nr = 2