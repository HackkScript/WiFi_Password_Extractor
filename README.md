This PowerShell script collects and extracts the passwords for all saved WiFi profiles on a Windows computer. It lists the profiles and their information using the netsh wlan display profile command, extracting the "Key Content"—which is the password—in particular. Next, a file called WiFiPasswords.txt contains the retrieved WiFi names and passwords.

Usage

1. Save the script as Save-WiFiPasswords.ps1.

2. Open PowerShell with administrative privileges.

3. Navigate to the directory where you saved the script.

4. Run the script by typing the following command:

**. .\Wifi_Password_Extractor.ps1**
