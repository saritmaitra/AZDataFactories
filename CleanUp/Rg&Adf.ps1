# Deleting a resource group deletes all resources including data factories in it. Run the following command to delete the entire resource group:
Remove-AzResourceGroup -ResourceGroupName $resourcegroupname

# If we want to delete just the data factory, not the entire resource group
Remove-AzDataFactoryV2 -Name $dataFactoryName -ResourceGroupName $resourceGroupName
