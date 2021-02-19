# Log in first with Connect-AzAccount if you're not using Cloud Shell
#Connect-AzAccount

# List Subscirptions
#Get-AzSubscription

#Set WVD Subscrition
#Set-AzContext -SubscriptionId "XXXX-XXXX-XXXX-XXXX"

Get-AzSubscription | Out-GridView -PassThru | Select-AzSubscription

# Deploy Azure Resource Manager template using template and parameter file locally
New-AzSubscriptionDeployment -Name 'PhoenixLighthouseConnection' `
                         -Location 'UK South' `
                 -TemplateFile  '.\DelegatedResourceManagement.json' `
                 -TemplateParameterFile '.\DelegatedResourceManagement.parameters.json' `
                 -Verbose
