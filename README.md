# Sharif Script

This script, `sharif_script.ps1`, is designed to facilitate the login and logout process for the Sharif University system. It utilizes PowerShell to interact with the Sharif login page through a REST API.

## Prerequisites
Before running the script, ensure that you have the following:
- PowerShell installed on your system.

## Usage
To run the script, follow these steps:

1. Open a PowerShell terminal.
2. Navigate to the directory containing the `sharif_script.ps1` file.
3. Execute the following command:
   ```powershell
   ./sharif_script.ps1 -action <action>
   ```
   Replace `<action>` with the desired action, either "login" or "logout".

**Example 1:** Logging in to Sharif
```powershell
./sharif_script.ps1 -action login -username "your username" -password "your password"
```

**Example 2:** Logging out from Sharif
```powershell
./sharif_script.ps1 -action logout
```

Please note that you need to provide your actual Sharif University credentials when running the script. In Example 1, replace `"your username"` with your Sharif University username, and `"your password"` with your Sharif University password.

