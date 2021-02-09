# following script continuously check the pipeline run status until it finishes copying the data

while ($True) {
    $Run = Get-AzDataFactoryV2PipelineRun `
        -ResourceGroupName $ResGrp.ResourceGroupName `
        -DataFactoryName $DataFactory.DataFactoryName `
        -PipelineRunId $RunId

    if ($Run) {
        if ($run.Status -ne 'InProgress') {
            Write-Output ("Pipeline run finished. The status is: " +  $Run.Status)
            $Run
            break
        }
        Write-Output "Pipeline is running...status: InProgress"
    }

    Start-Sleep -Seconds 10
}

# script to retrieve copy activity run details, for example, size of the data read/written

Write-Output "Activity run details:"
$Result = Get-AzDataFactoryV2ActivityRun -DataFactoryName $DataFactory.DataFactoryName -ResourceGroupName $ResGrp.ResourceGroupName -PipelineRunId $RunId -RunStartedAfter (Get-Date).AddMinutes(-30) -RunStartedBefore (Get-Date).AddMinutes(30)
$Result

Write-Output "Activity 'Output' section:"
$Result.Output -join "`r`n"

Write-Output "Activity 'Error' section:"
$Result.Error -join "`r`n"
