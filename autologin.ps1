Import-Module .\UIAutomation.0.8.7B3.NET35\UIAutomation.dll

[UIAutomation.Preferences]::Highlight = $false

$configPath = "${env:USERPROFILE}\_windows"

do {
    try {
        # read config
        $settings = @{}
        Import-Csv -Path $configPath -Header Key,Value -Delimiter "=" | %{$settings.Add($_.Key.Trim(),$_.Value.Trim())}

        # startup
        $vpnui = Get-Process vpnui | Get-UIAWindow -Seconds 30

        # input
        $userIdField = $vpnui | Get-UiaEdit -AutomationId '1193' -Class 'Edit'
        $passwordField = $vpnui |Get-UiaEdit -AutomationId '1194' -Class 'Edit'

        $userIdField.Value = $settings.USER_ID
        $passwordField.Value = $settings.PASSWORD

        # do login!
        $vpnui | Get-UiaButton -AutomationId '1' -Class 'Button' -Name 'OK' | Invoke-UiaButtonClick


    } catch [Exception] {
        Write-Host "Retry..."
    }
} while (1)

