This PowerShell script collects and extracts the passwords for all saved WiFi profiles on a Windows computer. It lists the profiles and their information using the netsh wlan display profile command, extracting the "Key Content"—which is the password—in particular. Next, a file called WiFiPasswords.txt contains the retrieved WiFi names and passwords.

Usage
Save the script as Save-WiFiPasswords.ps1.
Open PowerShell with administrative privileges.
Navigate to the directory where you saved the script.
Run the script by typing the following command:
**. .\Wifi_Password_Extractor.ps1**
