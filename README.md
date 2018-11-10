# vps2-provisioning

Provisioning
============

    ansible-playbook --limit production -i hosts playbook.yml --ask-vault-pass


Updating galaxy roles
=====================

    ansible-galaxy install -r galaxy.yml -f
