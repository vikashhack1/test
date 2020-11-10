Install-Module -Name Az.CosmosDB -AllowClobber

Connect-AzAccount
Select-AzSubscription -SubscriptionID  '8d9342fa-1e52-4e0c-9e03-1d32fc27db06'

Install-Module -Name Az.CosmosDB
$resourceGroupName = "myResourceGroup"
$locations = @("<location name>")
$accountName = "mycosmosaccount"
$apiKind = "<api kind>"
$consistencyLevel = "BoundedStaleness"
$maxStalenessInterval = 300
$maxStalenessPrefix = 100000
 
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Location $locations -Name $accountName -ApiKind $apiKind -EnableAutomaticFailover:$true -DefaultConsistencyLevel $consistencyLevel -MaxStalenessIntervalInSeconds $maxStalenessInterval -MaxStalenessPrefix $maxStalenessPrefix
 
//sample command
 
$resourceGroupName = "testrg"
$locations = @("Norway East")
$accountName = "vikakforcosmosdbnorwayeast"
$apiKind = "Sql"
$consistencyLevel = "BoundedStaleness"
$maxStalenessInterval = 300
$maxStalenessPrefix = 100000


Import-Module -Name Az.CosmosDB
 
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Location $locations -Name $accountName -ApiKind $apiKind -EnableAutomaticFailover:$true -DefaultConsistencyLevel $consistencyLevel -MaxStalenessIntervalInSeconds $maxStalenessInterval -MaxStalenessPrefix $maxStalenessPrefix -Verbose


$resourceGroupName = "testrg"
$locations = @("Norway West")
$accountName = "vikakforcosmosdbnorwaywest"
$apiKind = "Sql"
$consistencyLevel = "BoundedStaleness"
$maxStalenessInterval = 300
$maxStalenessPrefix = 100000


Import-Module -Name Az.CosmosDB
 
New-AzCosmosDBAccount -ResourceGroupName $resourceGroupName -Location $locations -Name $accountName -ApiKind $apiKind -EnableAutomaticFailover:$true -DefaultConsistencyLevel $consistencyLevel -MaxStalenessIntervalInSeconds $maxStalenessInterval -MaxStalenessPrefix $maxStalenessPrefix -Verbose

