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

################################
$ClusterName= "chackosecure5.westus.cloudapp.azure.com:19000"
$CertThumbprint= "70EF5E22ADB649799DA3C8B6A6BF7SD1D630F8F3" 

Connect-serviceFabricCluster -ConnectionEndpoint $ClusterName -KeepAliveIntervalInSec 10 `
    -X509Credential `
    -ServerCertThumbprint $CertThumbprint  `
    -FindType FindByThumbprint `
    -FindValue $CertThumbprint `
    -StoreLocation CurrentUser `
    -StoreName My
##############################


Connect-ServiceFabricCluster -ConnectionEndpoint "localhost:19000"
Update-ServiceFabricService -Stateless -ServiceName "fabric:/CryptoInbox/StatelessInboxService" -Metric @("WorkUnits,High,50,10") -InstanceCount 3
Update-ServiceFabricService -Stateless -ServiceName "fabric:/CryptoInbox/StatelessCryptoInboxService" -Metric @("WorkUnits,High,25,5")

