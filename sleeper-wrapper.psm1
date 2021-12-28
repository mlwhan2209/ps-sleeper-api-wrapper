$SleeperBaseUri = "https://api.sleeper.app/v1"

function Get-SleeperUser {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]$UserName
    )
    Begin {
        ## Using the module-scoped API endpoint URI to create a function-specific URL to query
        $Uri = "$SleeperBaseUri/user/{username}"
    }
    Process {
        # Create a temporary variable from the Uri variable contain int the PetId parameter
        $TempUri = $Uri -replace "\{username\}", $UserName
            
        # Call the API endpoint using the $TempUri
        Invoke-RestMethod -Uri $TempUri -Method Get 
    }
} 