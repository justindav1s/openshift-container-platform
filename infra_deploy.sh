#!/usr/bin/env bash


RESOURCE_GROUP=ocp-3.9-cluster

az group create -n ${RESOURCE_GROUP} -l uksouth

az group deployment create \
    --name ocpdeployment \
    --template-file azuredeploy.json \
    --parameters @azuredeploy.parameters.json \
    --resource-group ${RESOURCE_GROUP} --no-wait

