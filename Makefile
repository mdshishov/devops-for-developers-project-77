vault-edit:
	ansible-vault edit ansible/group_vars/all/vault.yml

terraform-init:
	cd terraform && terraform init

terraform-apply:
	cd terraform && terraform apply -auto-approve

terraform-output:
	cd terraform && terraform output -json > ../ansible/terraform-output.json

ansible-init:
	ansible-galaxy install -r ansible/requirements.yml

ansible-deploy:
	cd ansible && ansible-playbook -i inventory.ini playbook.yml -t deploy --ask-vault-pass

ansible-apply:
	cd ansible && ansible-playbook playbook.yml -t apply --ask-vault-pass

ansible-destroy:
	cd ansible && ansible-playbook playbook.yml -t destroy --ask-vault-pass

ansible-inventory:
	jq -r '.web_ips.value[]' ansible/terraform-output.json > ansible/inventory.ini
