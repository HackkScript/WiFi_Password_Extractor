# Get all WiFi profiles
$wifiProfiles = netsh wlan show profiles | Select-String -Pattern "All User Profile" | ForEach-Object { $_ -replace ".*: " }

# Initialize an array to hold the results
$passwords = @()

# Loop through each profile and extract the password
foreach ($profile in $wifiProfiles) {
    $profileInfo = netsh wlan show profile name="$profile" key=clear
    $password = $profileInfo | Select-String -Pattern "Key Content" | ForEach-Object { $_ -replace ".*: " }
    $passwords += [PSCustomObject]@{
        ProfileName = $profile
        Password    = $password
    }
}

# Define the output file path
$outputFilePath = "WiFiPasswords.txt"

# Write the results to the file
$passwords | ForEach-Object { 
    "$($_.ProfileName) : $($_.Password)" 
} | Out-File -FilePath $outputFilePath -Encoding UTF8

# Output a message indicating where the file was saved
Write-Host "WiFi passwords have been saved to $outputFilePath"
