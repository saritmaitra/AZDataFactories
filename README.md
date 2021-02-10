# AZDataFactories

## New features for SSIS in Data Factory
Data Factory has added the following features for SSIS:

Support for three more configurations/variants of Azure SQL Database to host the SSIS database (SSISDB) of projects/packages:
- SQL Database with virtual network service endpoints
- SQL Managed Instance
- Elastic pool
- Support for an Azure Resource Manager virtual network on top of a classic virtual network to be deprecated in the future, which lets you inject/join your Azure-SSIS integration runtime to a virtual network configured for SQL Database with virtual network service endpoints/MI/on-premises data access. For more information, see also Join an Azure-SSIS integration runtime to a virtual network.
- Support for Azure Active Directory (Azure AD) authentication and SQL authentication to connect to the SSISDB, allowing Azure AD authentication with your Data Factory managed identity for Azure resources
- Support for bringing your existing SQL Server license to earn substantial cost savings from the Azure Hybrid Benefit option
- Support for Enterprise Edition of the Azure-SSIS integration runtime that lets you use advanced/premium features, a custom setup interface to install additional components/extensions, and a partner ecosystem. For more information, see also Enterprise Edition, Custom Setup, and 3rd Party Extensibility for SSIS in ADF.
- Deeper integration of SSIS in Data Factory that lets you invoke/trigger first-class Execute SSIS Package activities in Data Factory pipelines and schedule them via SSMS. For more information, see also Modernize and extend your ETL/ELT workflows with SSIS activities in ADF pipelines.

## Limitations

### Limit on the number of integration runtimes
There is no hard limit on the number of integration runtime instances you can have in a data factory. There is, however, a limit on the number of VM cores that the integration runtime can use per subscription for SSIS package execution. 

More on limit dtails can be seen at:
https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-subscription-service-limits#data-factory-limits

https://github.com/MicrosoftDocs/azure-docs/blob/master/includes/azure-data-factory-limits.md
