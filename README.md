# Проект: Инфраструктура как код

### Hexlet tests and linter status:
[![Actions Status](https://github.com/mdshishov/devops-for-developers-project-77/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/mdshishov/devops-for-developers-project-77/actions)

## Требования
- Make
- Terraform
- Ansible
- JQ

## Команды
### Поднятие инфраструктуры
```
make terraform-init
make ansible-apply
```
### Генерация inventory
```
make terraform-output
make ansible-inventory
```
### Установка зависимостей Ansible
```
make ansible-init
```
### Деплой приложения
```
make ansible-deploy
```
### Удаление инфраструктуры
```
make ansible-destroy
```