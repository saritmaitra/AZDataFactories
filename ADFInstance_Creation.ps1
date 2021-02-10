
# If not installed already
Install-Module -Name AzRM

# update existing Azure PowerShell module
Update-Module -Name AzRM

# Log-in to PS

Connect-AzAccount

Get-AzSubscription

# In case of multiple subscriptions associated with account, run the following command to select the subscription that you want to work with.
# Replace SubscriptionId with the ID of my Azure subscription:

Select-AzSubscription -SubscriptionId "<SubscriptionId>"

# Define a variable for the resource group name that you use in PowerShell commands later
$resourceGroupName = "ADFSaritRG";

# create the Azure resource group
$ResGrp = New-AzResourceGroup $resourceGroupName -location 'East US'

# Define a variable for the data factory name
$dataFactoryName = "ADFSaritFactory";

# To create the data factory, run the following Set-AzDataFactoryV2 cmdlet, using the Location and ResourceGroupName property from the $ResGrp variable:
$DataFactory = Set-AzDataFactoryV2 -ResourceGroupName $ResGrp.ResourceGroupName `
    -Location $ResGrp.Location -Name $dataFactoryName
    
    
# The name of ADF must be globally unique. If we receive the following error, change the name and try again.
* The specified Data Factory name 'ADFv2QuickStartDataFactory' is already in use. Data Factory names must be globally unique.

# For a list of Azure regions in which Data Factory is currently available, select the regions of interest, 
# and then expand Analytics to locate Data Factory: Products available by region. 
# The data stores (Azure Storage, Azure SQL Database, etc.) and computes (HDInsight, etc.) used by data factory can be in other regions.
