pms:
	ansible-playbook -b run.yaml --limit perfectmediaserver

pcomp:
	ansible-playbook -b run.yaml --limit perfectmediaserver --tags compose

traefik:
	ansible-playbook -b run.yaml --limit perfectmediaserver --tags traefik

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

