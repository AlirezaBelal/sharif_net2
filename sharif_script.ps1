param (
    [Parameter(Position = 0)]
    [string]$action
)

function Sharif_Login {
    param (
        [Parameter(Mandatory = $true)]
        [string]$username,
        [Parameter(Mandatory = $true)]
        [string]$password
    )

    Write-Host "Executing Sharif_Login..."
    $url = "https://net2.sharif.edu/login"
    $body = @{
        username = $username
        password = $password
    }

    try {
        $session = Invoke-RestMethod -Uri $url -Method POST -Body $body

        if ($session.StatusCode -eq 200) {
            Write-Host "Successfully logged in to Sharif."
            $global:SharifSession = $session
        } else {
            Write-Host "Error occurred while logging in to Sharif. Will try again!!!"
        }
    } catch {
        Write-Host "An error occurred while logging in to Sharif: $_"
    }
}

function Sharif_Logout {
    ## to do coding
	Write-Host "In the future, the Sharif_Logout function will be implemented"
}

Write-Host "Script execution started..."

if ($action -eq "login") {
    Write-Host "Logging in..."
    Sharif_Login -username "your username" -password "your password"
} elseif ($action -eq "logout") {
    Write-Host "Logging out..."
    if ($global:SharifSession -ne $null) {
        Sharif_Logout
    } else {
        Write-Host "No existing login found."
    }
} else {
    Write-Host "Invalid action. Please specify 'login' or 'logout'."
}

Write-Host "Script execution completed."
