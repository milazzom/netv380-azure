#!/bin/bash

az network nsg rule list \
    --resource-group "netv380-hw4" \
    --nsg-name "hw4webNSG"

az keyvault list \
    --resource-group "netv380-hw4"