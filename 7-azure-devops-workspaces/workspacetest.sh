#!/bin/bash
echo "*********** Create or select workspace"
WORKSPACECOUNT=$(terraform workspace list | grep -c "$1")
echo "WORKSPACECOUNT is $WORKSPACECOUNT"
echo "The workspace name is $1"
#if [ WORKSPACECOUNT -eq 0 ] ; then
echo "Create new workspace $1"
terraform workspace new "$1"
#else
#  echo "Switch to workspace $1"
#  terraform workspace select "$1" -no-color
#fi