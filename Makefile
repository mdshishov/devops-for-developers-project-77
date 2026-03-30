vault-edit:
	ansible-vault edit ansible/group_vars/all/vault.yml

init:
	cd terraform && terraform init

plan:
	cd terraform && terraform plan

apply:
	cd ansible && ansible-playbook playbook.yml --ask-vault-pass

destroy:
	cd terraform && terraform destroy -auto-approve

install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass
