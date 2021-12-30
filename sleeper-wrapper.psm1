$SleeperBaseUri = "https://api.sleeper.app/v1"

function Get-SleeperUser {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]$UserName
    )
    Begin {
        $Uri = "$SleeperBaseUri/user/{username}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{username\}", $UserName            
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
        $Uri = "$SleeperBaseUri/league/{league_id}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find anyone with that username"
        }
    }
}


function Get-SleeperLeagueRosters {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/rosters"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find anyone with that username"
        }
    }
} 