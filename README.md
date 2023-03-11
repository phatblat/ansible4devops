# Ansible 4 DevOps Examples

## Setup

### Start the VM

```command
vagrant up --provider=docker
```

Aliased to `make up`.

### View Status

```command
vagrant status
```

Aliased to `make status`.

### Connect into the VM/container

```command
vagrant ssh

# or direct
ssh -p 2222 -l vagrant -i .ssh/ansible localhost
```

### Stop the VM

```command
vagrant destroy --force
```

Aliased to `make down`.

## 📄 License

This repo is licensed under the MIT License. See the [LICENSE](LICENSE.md) file for rights and limitations.
