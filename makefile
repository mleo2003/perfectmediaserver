pms:
	ansible-playbook -b run.yaml --limit perfectmediaserver

# Help Managing Roles from Ansible Galaxy
reqs:
	ansible-galaxy install -r requirements.yaml

forcereqs:
	ansible-galaxy install -r requirements.yaml --force

# Help managing secrets stored via Ansible Vault
decrypt:
	ansible-vault decrypt vars/vault.yaml

encrypt:
	ansible-vault encrypt vars/vault.yaml

