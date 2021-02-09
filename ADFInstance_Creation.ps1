cd .\.azure # .azure directory in local machine

# If not installed already
Install-Module -Name AzureRM

# update existing Azure PowerShell module
Update-Module -Name AzureRM

Connect-AzureRmAccount

Get-AzureRmSubscription

# In case of multiple subscriptions associated with account, run the following command to select the subscription that you want to work with.
# Replace SubscriptionId with the ID of my Azure subscription:
Select-AzureRmSubscription -SubscriptionId "<SubscriptionId>"

# Create a Data Factory

Set-AzureRmDataFactoryV2 -ResourceGroupName rgname -Location eastus -Name adfdemo
