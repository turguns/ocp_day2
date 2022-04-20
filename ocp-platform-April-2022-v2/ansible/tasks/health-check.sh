#!/bin/bash

echo -e '\n'
date
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Cluster Name\n'
oc cluster-info
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Node Status\n' 
oc get no
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Cluster Operator Status\n'
oc get co
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'PVC Status\n'
oc get pvc -A
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of Pods\n'
oc get po -A | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of Running Pods\n'
oc get po -A | grep -i 'running' | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of Pending pods\n'
oc get po -A | grep -i 'pending' | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Pending pods details\n'
oc get po -A | grep -i 'pending'
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of ImagePullBackOff pods\n'
oc get po -A | grep -i 'imagepullbackoff*' | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'ImagePullBackOff pods details\n'
oc get po -A | grep -i 'imagepullbackoff*'
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of CrashLoopBackOff pods\n'
oc get po -A | grep -i 'crashloopbackoff' | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'CrashLoopBackOff pods status\n'
oc get po -A | grep -i 'crashloopbackoff'
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Total number of Error pods\n'
oc get po -A | grep -i 'error' | wc -l
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
printf 'Error pods status\n'
oc get po -A | grep -i 'error' 
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
