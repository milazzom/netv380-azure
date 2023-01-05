#!/bin/bash

az network nsg rule list \
    --resource-group "netv380-hw5" \
    --nsg-name "hw5webNSG"

az vm list-ip-addresses -o table

az keyvault list \
    --resource-group "netv380-hw5"