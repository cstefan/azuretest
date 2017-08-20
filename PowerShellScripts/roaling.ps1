# New Service
Connect-ServiceFabricCluster 

   
    New-ServiceFabricService 
        -Stateless 
        -PartitionSchemeSingleton 
        -ApplicationName fabric:/CryptoInbox 
        -ServiceTypeName StatelessInboxServiceType 
        -ServiceName fabric:/CryptoInbox/StatelessInboxServiceTypePS2 
        -InstanceCount 1
### -----------------------------------------------
Import-Module 'C:\Program Files\Microsoft SDKs\Service Fabric\Tools\PSModule\ServiceFabricSDK\ServiceFabricSDK.psm1'

Get-ServiceFabricApplicationStatus

Get-ServiceFabricService -ApplicationName fabric:/CryptoInbox