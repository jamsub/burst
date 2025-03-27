# This will install the Elastic Security Agent and send data to our security console
# Download the file and run as admin in powershell
# Contact support@secureps.net if needed
Set-Location "C:\"

# Check if the directory exists before attempting to remove it
if (Test-Path -Path ".\spstmp") {
    Remove-Item -Path ".\spstmp" -Recurse -Force
}

New-Item -Path "spstmp" -ItemType Directory

Set-Location ".\spstmp"

$ProgressPreference = 'SilentlyContinue'

Invoke-WebRequest -Uri https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.17.1-windows-x86_64.zip -OutFile elastic-agent-8.17.1-windows-x86_64.zip 

Expand-Archive .\elastic-agent-8.17.1-windows-x86_64.zip -DestinationPath .

Set-Location ".\elastic-agent-8.17.1-windows-x86_64"

.\elastic-agent.exe install --force --url=https://1a03ce24cb134d0ba1d4b7a555cca6f2.fleet.centralus.azure.elastic-cloud.com:443 --enrollment-token=ZWJrZWxwUUJqNGhTNldDVXlNUVM6RTVRV0dfV3hRc21ZWVBlRE1vVF9zdw==

