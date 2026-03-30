vault-edit:
	ansible-vault edit ansible/group_vars/all/vault.yml

terraform-init:
	cd terraform && terraform init

ansible-init:
	cd ansible && ansible-playbook playbook.yml -t init --ask-vault-pass

ansible-plan:
	cd ansible && ansible-playbook playbook.yml -t plan --ask-vault-pass

ansible-apply:
	cd ansible && ansible-playbook playbook.yml -t apply --ask-vault-pass

ansible-destroy:
	cd ansible && ansible-playbook playbook.yml -t destroy --ask-vault-pass