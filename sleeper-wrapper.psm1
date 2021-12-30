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
        try {
            $TempUri = $Uri -replace "\{username\}", $UserName            
            # Call the API endpoint using the $TempUri
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find anyone with that username"
        }
    }
} 

function Get-SleeperLeague {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        ## Using the module-scoped API endpoint URI to create a function-specific URL to query
        $Uri = "$SleeperBaseUri/league/{league_id}"
    }
    Process {
        $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            
        # Call the API endpoint using the $TempUri
        Invoke-RestMethod -Uri $TempUri -Method Get 
    }
} 

function Get-SleeperLeagueRosters {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        ## Using the module-scoped API endpoint URI to create a function-specific URL to query
        $Uri = "$SleeperBaseUri/league/{league_id}/rosters"
    }
    Process {
        $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            
        # Call the API endpoint using the $TempUri
        Invoke-RestMethod -Uri $TempUri -Method Get 
    }
} 