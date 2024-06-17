# ansible role - gitea docker stack


#### hosts.yml - inventory example
```
---

gitea:
  hosts:
    host1.example:
```

#### gitea.yml - playbook example
```
---

- name: Deploy gitea

  hosts: gitea

  gather_facts: false

  roles:
    - gitea

  vars:

    ansible_user: example_user

    docker_user: example_user

    gitea_docker_stack_directory: "/home/example_user/docker_stacks/gitea_docker_stack"

    gitea_network_subnet: "172.17.0.0/24"
    gitea_network_gateway: "172.17.0.1"

    gitea_root_url_host: "gitea.example.com"
    gitea_root_url_port: 80

    gitea_http_port: 3000
    gitea_ssh_port: 22

    gitea_user_id: 1000
    gitea_group_id: 1000
```