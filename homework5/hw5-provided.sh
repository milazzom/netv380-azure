#!/bin/bash

az group create \
    --name netv380-hw5 \
    --location eastus

az vm create \
  --resource-group netv380-hw5 \
  --name hw5web \
  --image Ubuntu2204 \
  --size Standard_B1s \
  --admin-username azureuser \
  --generate-ssh-keys

  az vm extension set \
  --resource-group netv380-hw5 \
  --vm-name hw5web \
  --name customScript \
  --publisher Microsoft.Azure.Extensions \
  --version 2.1 \
  --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}' \
  --protected-settings '{"commandToExecute": "./configure-nginx.sh"}'