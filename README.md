# hostconfig
Configuration files for my home config

## Roles

### common

Basic setup, basic packages.

This role was initialized with

```
ansbile-galaxy init common
```

## Cheatsheet

Install packages on Macbook only:

```
ansible-playbook -i inventory --limit mac --tags packages site.yml
```
