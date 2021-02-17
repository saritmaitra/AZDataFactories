New-AzureStorageContainer
   [-Name] <String>
   [[-Permission] <BlobContainerPublicAccessType>]
   [-Context <IStorageContext>]
   [-ServerTimeoutPerRequest <Int32>]
   [-ClientTimeoutPerRequest <Int32>]
   [-DefaultProfile <IAzureContextContainer>]
   [-ConcurrentTaskCount <Int32>]
   [<CommonParameters>]
   
   #create container
   New-AzureStorageContainer -Name "ContainerName" -Permission Off
   
   #Multiple container
   "container1 container2 container3".split() | New-AzureStorageContainer -Permission Container
   
