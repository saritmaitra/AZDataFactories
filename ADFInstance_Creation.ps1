cd .\.azure # .azure directory in local machine

# If not installed already
Install-Module -Name AzRM

# update existing Azure PowerShell module
Update-Module -Name AzRM

Connect-AzRmAccount

Get-AzRmSubscription

# In case of multiple subscriptions associated with account, run the following command to select the subscription that you want to work with.
# Replace SubscriptionId with the ID of my Azure subscription:
Select-AzRmSubscription -SubscriptionId "<SubscriptionId>"

# Create a Data Factory

Set-AzRmDataFactoryV2 -ResourceGroupName rgname -Location eastus -Name adfdemo
