# Create SelfSignedSSL Certificate for Azure

# Login to Azure and get the Subscription ID
Login-AzureRmAccount

<#
Environment           : AzureCloud
Account               : stefancatalinradu@yahoo.com
TenantId              : 74aadf15-7156-4c2d-bb23-b968895554f7
SubscriptionId        : 120aa78c-bac1-4079-950b-e9159c47abe9
SubscriptionName      : Free Trial
CurrentStorageAccount : 
#>

# Clone Repo from https://github.com/ChackDan/Service-Fabric
Import-module C:\Users\cstefan\Documents\#GitRepos\Service-Fabric\Scripts\ServiceFabricRPHelpers\ServiceFabricRPHelpers.psm1

# Create Certificate
#Invoke-AddCertToKeyVault -SubscriptionId 120aa78c-bac1-4079-950b-e9159c47abe9 -ResourceGroupName vegacluster_weu -Location "West Europe" -VaultName vegacluster -CertificateName vegacert -Password !1%indeca -CreateSelfSignedCertificate -DnsName www.vegademo.azurewebsites.net -OutputPath c:\AzureCertificates
Invoke-AddCertToKeyVault -SubscriptionId 120aa78c-bac1-4079-950b-e9159c47abe9 -ResourceGroupName vegacluster_weu -Location "West Europe" -VaultName vegacluster -CertificateName vegacert -Password !1%indeca -CreateSelfSignedCertificate -DnsName vegacluster.westeurope.cloudapp.azure.com -OutputPath c:\AzureCertificates


<#
Name                           Value
----                           -----
CertificateThumbprint          66AF8847B38EC754F1C2398D5E933B70C419A13B
SourceVault                    /subscriptions/120aa78c-bac1-4079-950b-e9159c47abe9/resourceGroups/vegacluster_weu/providers/Microsoft.KeyVault/vaults/vegacluster
CertificateURL                 https://vegacluster.vault.azure.net:443/secrets/vegacert/78869ed83f9848c0be8c17c825e96dad
#>

# Certificate was created and uploaded into Azure
# Now use a Template to deploy the Cluster to Azure
# Goto https://github.com/Azure/azure-quickstart-templates/tree/master/service-fabric-secure-cluster-5-node-1-nodetype
# Click on Deploy to Azure

# Adjust parameters. Admin cstefan, password !1%indeca
# vegacluster.westeurope.cloudapp.azure.com






