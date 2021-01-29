Connect-AzAccount
Select-AzSubscription -SubscriptionId 'a3463f52-da99-49bd-86ac-3ccd110e834d' # CDM OaaS Runner 1
#Add-AzAccount -Tenant fairfaxdevopsnonrestricted.onmicrosoft.com -Environment AzureUSGovernment
#Select-AzSubscription -SubscriptionId 'a1d148ea-c45e-45f7-acc5-b7bcc10813af' # CDM OaaS Runner 1
$x = Get-AzResourceGroup
$y = $x | where-object { $_.ResourceGroupName -like "region_autovalidate*" }
foreach ($z in $y) { $z.ResourceGroupName; Remove-AzResourceGroup -Name $z.ResourceGroupName -Force -AsJob }


Select-AzSubscription -SubscriptionId 'bd6150e6-82f7-4279-9577-508b16388abb' # CDM OaaS Runner 1
#Add-AzAccount -Tenant fairfaxdevopsnonrestricted.onmicrosoft.com -Environment AzureUSGovernment
#Select-AzSubscription -SubscriptionId 'a1d148ea-c45e-45f7-acc5-b7bcc10813af' # CDM OaaS Runner 1
$x = Get-AzResourceGroup
$y = $x | where-object { $_.ResourceGroupName -like "region_autovalidate*" }
foreach ($z in $y) { $z.ResourceGroupName; Remove-AzResourceGroup -Name $z.ResourceGroupName -Force -AsJob }

Select-AzSubscription -SubscriptionId '0cd43ce1-0b0a-4d45-9b86-11bc27ae993d' # CDM OaaS Runner 1
#Add-AzAccount -Tenant fairfaxdevopsnonrestricted.onmicrosoft.com -Environment AzureUSGovernment
#Select-AzSubscription -SubscriptionId 'a1d148ea-c45e-45f7-acc5-b7bcc10813af' # CDM OaaS Runner 1
$x = Get-AzResourceGroup
$y = $x | where-object { $_.ResourceGroupName -like "region_autovalidate*" }
foreach ($z in $y) { $z.ResourceGroupName; Remove-AzResourceGroup -Name $z.ResourceGroupName -Force -AsJob }