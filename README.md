# fedora-deployment
configuring fedora after installation

*Work in progress*
## Configuring encrypted files

replace group_vars/work_user_password.yml with
`ansible-vault create group_vars/work_user_password.yml`
add the following - change `password`
```yaml
---
work_user_password: password
```

# Execution

`ansible-playbook --ask-vault-pass --ask-become-pass main.yml`
