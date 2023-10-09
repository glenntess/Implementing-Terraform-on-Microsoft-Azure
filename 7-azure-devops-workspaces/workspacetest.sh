#!/bin/bash
echo "*********** Create or select workspace"
WORKSPACECOUNT=$(terraform workspace list | grep -c "$WORKSPACENAME")
echo "WORKSPACECOUNT is $WORKSPACECOUNT"
echo "The workspace name is $WORKSPACENAME"
if [ $WORKSPACECOUNT -eq 0 ] ; then
echo "Create new workspace $WORKSPACENAME"
terraform workspace new "$WORKSPACENAME"
else
  echo "Switch to workspace $WORKSPACENAME"
  terraform workspace select "$WORKSPACENAME"
fi