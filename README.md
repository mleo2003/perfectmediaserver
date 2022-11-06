# Perfect Media Server - Day 2 Setup

I'm setting this repo up to help others see a way to start off cleanly using the [Perfect Media Server](https://perfectmediaserver.com), just after setting up things on the [Manual Install on Ubuntu](https://perfectmediaserver.com/installation/manual-install-ubuntu/) page.

## Setup a remote user

Once your server is setup and configured slightly (MergerFS/SnapRaid/Samba/etc.), you'll want to ensure you have a remote user all setup for using Ansible with it.

The most this user will need is a SSH key setup for connecting, and sudo permissions. Check your OS's notes on how to add a user, and add them to the sudo group.

## Setup your SSH key

Setup the remote side for SSH key logins:

```
ssh-copy-id user@host
```

## Install Ansible

This repo makes heavy use of Ansible to do a lot of the work for setting up Docker and Docker Compose.

```
python3 -m pip install --user ansible
```

## Adjust Files
- Add or update the host entry in `hosts.ini`
- Target host with roles in `run.yaml`
- Ensure needed roles are installed in `requirements.yaml`
	- Or manually put them in the `roles/`
- Optional: Add entry in `makefile` for easier time using Ansible
- Setup `group_vars/` with `all.yaml` and `perfectmediaserver.yaml` for special configs
- Put password in `.vault-password` for using Ansible Vault

## Initial Run!
- `make reqs` to download the roles from `requirements.yaml` into `galaxy_roles/`
- `make pms` to apply the configs to the server!

## Adding more

- Update `requirements.yaml` to include the roles you want OR manually add roles into the `roles/` dir.
- Add configuration details into `group_vars/all.yaml` or `group_vars/perfectmediaserver.yaml` as needed.
- Add the new role into the right section for `run.yaml`.
- As needed, use `make reqs` or `make forcereqs` to download/update the required roles from Ansible Galaxy.
- Use `make pms` to apply the new settings to your Perfece Media Server.
