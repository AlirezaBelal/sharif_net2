**Script Documentation: Sharif Login and Logout**

This script is designed to provide a basic implementation for logging into and logging out of the Sharif University website using PowerShell. It consists of two main functions: `Sharif_Login` and `Sharif_Logout`, as well as some additional code for handling user input.

### Parameters

The script accepts a single parameter called `$action`, which is used to determine whether the user wants to log in or log out. The parameter is defined using the `[Parameter(Position = 0)]` attribute, which indicates that it should be the first positional parameter when invoking the script. The value of `$action` can be either "login" or "logout".

### Function: Sharif_Login

The `Sharif_Login` function is responsible for logging into the Sharif University website. It requires two mandatory parameters: `$username` and `$password`, both of type `[string]`. 

The function sends an HTTP POST request to the login endpoint (`https://net2.sharif.edu/login`) with the provided username and password. If the request is successful (HTTP status code 200), it stores the session information in the global variable `$global:SharifSession` for future use. Otherwise, it displays an error message.

### Function: Sharif_Logout

The `Sharif_Logout` function is currently empty and serves as a placeholder for future implementation. It is intended to handle the logout functionality from the Sharif University website.

### Script Execution

The script begins by displaying a message indicating that the script execution has started.

Based on the value of the `$action` parameter, the script executes the appropriate action. If `$action` is "login", the script calls the `Sharif_Login` function with the provided username and password. If `$action` is "logout", it checks if a login session exists (`$global:SharifSession`). If a session exists, it calls the `Sharif_Logout` function. Otherwise, it displays a message indicating that no login session was found.

If an invalid action is specified or no action is provided, the script displays an error message requesting the user to specify either "login" or "logout".

Finally, the script displays a message indicating that the script execution has completed.

### Example Usage

To log in to the Sharif University website:

```powershell
.\script.ps1 -action login
```

To log out from the Sharif University website:

```powershell
.\script.ps1 -action logout
```

**Note**: Replace `.\script.ps1` with the actual path to the script file, and provide the appropriate username and password in the script or modify the script to accept them as arguments.