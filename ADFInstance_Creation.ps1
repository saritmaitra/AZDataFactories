cd .\.azure # .azure directory in local machine

# If not installed already
Install-Module -Name AzRM

# update existing Azure PowerShell module
Update-Module -Name AzRM

Connect-AzAccount

Get-AzSubscription

# In case of multiple subscriptions associated with account, run the following command to select the subscription that you want to work with.
# Replace SubscriptionId with the ID of my Azure subscription:

Select-AzSubscription -SubscriptionId "<SubscriptionId>"

# Define a variable for the resource group name that you use in PowerShell commands later
$resourceGroupName = "ADFQuickStartRG";

# create the Azure resource group
$ResGrp = New-AzResourceGroup $resourceGroupName -location 'East US'

# Define a variable for the data factory name
$dataFactoryName = "ADFQuickStartFactory";

# To create the data factory, run the following Set-AzDataFactoryV2 cmdlet, using the Location and ResourceGroupName property from the $ResGrp variable:
$DataFactory = Set-AzDataFactoryV2 -ResourceGroupName $ResGrp.ResourceGroupName `-Location $ResGrp.Location -Name $dataFactoryName
