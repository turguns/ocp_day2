#!/bin/bash
OPENSHIFT_MAJOR_VERSION=4.7
OPENSHIFT_MINOR_VERSION=32
OC_CLIENT_FILE_LOCATION="/data/tools/openshift-client-linux-$OPENSHIFT_MAJOR_VERSION.$OPENSHIFT_MINOR_VERSION.tar.gz"
K8S_PACKAGE_LOCATION="/data/tools/K8S_Packages"
GIT_FOLDER="$HOME/ocp-platform/ansible"

#Install oc client
cp $OC_CLIENT_FILE_LOCATION /tmp
cd /tmp; tar xfz /tmp/openshift-client-linux-$OPENSHIFT_MAJOR_VERSION.$OPENSHIFT_MINOR_VERSION.tar.gz ; sudo mv oc kubectl /usr/local/bin/;

#Install packages
sudo yum install -y git ansible python27-python.x86_64  rh-python36.x86_64 libselinux-python3   --enablerepo="*"

#Install K8S modules
pip3 install --no-index --find-link=$K8S_PACKAGE_LOCATION/kubernetes kubernetes
pip3 install --no-index --find-link=$K8S_PACKAGE_LOCATION/openshift openshift
pip3 install --no-index --find-link=$K8S_PACKAGE_LOCATION/Pyyaml PyYaml

#Append OCP nodes hostst list to /etc/hosts
sudo cat $GIT_FOLDER/files/hosts >> /etc/hosts

