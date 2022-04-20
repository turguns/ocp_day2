# ocp-onboard-tenants
OCP4 Tenant Onboarding and Quota management

# To create project , Whitelisting and Rolebinding
```
ansible-playbook onboarding.yaml -e cluster=<CLUSTER-NAME> \
      -e @group_vars/tenant_onboarding/projects/<project-name>.yaml
```
# Update quotas and limitranges
```
ansible-playbook project-update-onboarding.yaml -e cluster=<CLUSTER-NAME> \
      -e @group_vars/tenant_onboarding/projects/<project-name>.yaml
````
# Restore all namespace
```
for i in $(ls group_vars/tenant_onboarding/projects); do ansible-playbook onboarding.yaml \
      -e cluster=<CLUSTER-NAME> -e @group_vars/tenant_onboarding/projects/$i; echo $i; done
```
