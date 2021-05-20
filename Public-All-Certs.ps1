Connect-AzAccount
Select-AzSubscription -Subscription '89d5454d-778d-4e0a-b893-2d3f7126b6e9'
$Certificates=Get-AzKeyVaultCertificate -VaultName oaascdoprodvault

ForEach ($cert in $Certificates)
{
 Get-AzKeyVaultCertificate -VaultName oaascdoprodvault -Name $cert.Name  | Select  KeyId,SecretId,Thumbprint,RecoveryLevel,Enabled,Expires,NotBefore,Created,Updated,VaultName,Name,Version,Id, @{e={$_.Certificate.Subject}},@{e={$_.Certificate.Issuer}}|  Export-csv 'FF10052020-1.csv' -Append
 
}

$Certificates=Get-AzKeyVaultCertificate -VaultName oaascdoprodvault

ForEach ($cert in $Certificates)
{
 Get-AzKeyVaultCertificate -VaultName oaascdoprodvault -Name $cert.Name  | Select  KeyId,SecretId,Thumbprint,RecoveryLevel,Enabled,Expires,NotBefore,Created,Updated,VaultName,Name,Version,Id, @{e={$_.Certificate.Subject}},@{e={$_.Certificate.Issuer}}|  Export-csv 'Public10052020-2.csv' -Append
 
}

