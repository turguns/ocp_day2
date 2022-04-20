#
ansible-playbook site.yaml -e @group_vars/hosts-onprem-<STAGE>-<CLUSTER-NAME>.yaml --ask-vault-pass

