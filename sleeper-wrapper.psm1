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

function Get-SleeperAllLeagues {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$UserID,[Int64]$Season
    )
    Begin {
        $Uri = "$SleeperBaseUri/user/{user_id}/leagues/nfl/{season}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID -replace "\{season\}", $Season
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find anyone with that userID in that season"
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
            Write-Warning -Message "Unable to find any league with that ID"
        }
    }
}

function Get-SleeperLeagueUsers {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/users"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any league with that ID"
        }
    }
}

function Get-SleeperLeagueMatchups {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID,[Int64]$Week
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/matchups/{week}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID -replace "\{week\}", $Week
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any league with that ID in that week"
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

function Get-SleeperPlayoffWinnersBracket {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/winners_bracket"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any playoffs matchups"
        }
    }
} 

function Get-SleeperPlayoffLosersBracket {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/losers_bracket"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any playoffs matchups"
        }
    }
} 

function Get-SleeperLeagueTransactions {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID,[Int64]$Week
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/transactions/{week}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID -replace "\{week\}",$Week
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any transactions"
        }
    }
} 

function Get-SleeperLeagueTradedPicks {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/traded_picks"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any traded picks"
        }
    }
} 

function Get-SleeperSportInfo {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]$Sport
    )
    Begin {
        $Uri = "$SleeperBaseUri/state/{sport}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{sport\}", $Sport
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any info"
        }
    }
} 

function Get-SleeperUserDrafts {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$UserID,[Int64]$Season
    )
    Begin {
        $Uri = "$SleeperBaseUri/user/{user_id}/drafts/nfl/{season}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{user_id\}", $UserID -replace "\{season\}",$Season
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any drafts for that user in this year"
        }
    }
} 

function Get-SleeperLeagueDrafts {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$LeagueID
    )
    Begin {
        $Uri = "$SleeperBaseUri/league/{league_id}/drafts"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{league_id\}", $LeagueID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find any drafts for that league"
        }
    }
} 

function Get-SleeperDraft {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$DraftID
    )
    Begin {
        $Uri = "$SleeperBaseUri/draft/{draft_id}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{draft_id\}", $DraftID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find that draft"
        }
    }
} 

function Get-SleeperDraftPicks {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$DraftID
    )
    Begin {
        $Uri = "$SleeperBaseUri/draft/{draft_id}/picks"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{draft_id\}", $DraftID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find that draft"
        }
    }
} 

function Get-SleeperDraftTradedPicks {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [Int64]$DraftID
    )
    Begin {
        $Uri = "$SleeperBaseUri/draft/{draft_id}/traded_picks"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{draft_id\}", $DraftID
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find that draft"
        }
    }
} 

function Get-SleeperAllPlayers {
    try {
        $TempUri = "$SleeperBaseUri/players/nfl"
        Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
    }
    catch {
        Write-Warning -Message "Unable to find that draft"
    }
}

function Get-SleeperTrendingPlayers {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline, ValueFromPipelineByPropertyName)]
        [string]$AddorDrop,[Int64]$Hours,[Int64]$Limit
    )
    Begin {
        $Uri = "$SleeperBaseUri/players/nfl/trending/{type}?lookback_hours={hours}&limit={int}"
    }
    Process {
        try {
            $TempUri = $Uri -replace "\{type\}", $AddorDrop -replace "\{hours\}", $Hours -replace "\{int\}", $Limit
            Invoke-RestMethod -Uri $TempUri -Method Get -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to find trending players"
        }
    }
} 