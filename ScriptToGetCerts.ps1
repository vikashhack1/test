
$OutputFolder = 'D:\AzureAutomation\Certs\ExportedCerts'
$CertificateNames = Get-Content D:\AzureAutomation\Certs\CertsTobeUploaded.txt

foreach ($certificate in $CertificateNames) {
    Write-Verbose $certificate

    $localCert = Export-OaaSKeyVaultCertificate -Name $certificate -OutputFolder $OutputFolder
    Write-Verbose $localCert


}