#create trigger
Set-AzDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -Name "MyTrigger" -DefinitionFile "C:\ADFv2QuickStartPSH\MyTrigger.json"

# Confirm that the status of the trigger is Stopped
Get-AzDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -Name "MyTrigger"

#start the trigger
Start-AzDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -Name "MyTrigger"

#confirm status of trigger started
Get-AzDataFactoryV2Trigger -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -Name "MyTrigger"

#Get the trigger runs in Azure PowerShell by using the Get-AzDataFactoryV2TriggerRun cmdlet. 
#To get information about the trigger runs, execute the following command periodically. 
#Update the TriggerRunStartedAfter and TriggerRunStartedBefore values to match the values in your trigger definition
Get-AzDataFactoryV2TriggerRun -ResourceGroupName $ResourceGroupName -DataFactoryName $DataFactoryName -TriggerName "MyTrigger" -TriggerRunStartedAfter "2017-12-08T00:00:00" -TriggerRunStartedBefore "2017-12-08T01:00:00"
© 2021 GitHub, Inc.
