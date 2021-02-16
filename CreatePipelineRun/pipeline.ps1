# The cmdlet returns the pipeline run ID for future monitoring.

$RunId = Invoke-AzDataFactoryV2Pipeline `
  -DataFactoryName $DataFactory.DataFactoryName `
  -ResourceGroupName $ResGrp.ResourceGroupName `
  -PipelineName $DFPipeLine.Name
