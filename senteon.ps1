# This will download and install the Senteon Agent. Download this script and run from powershell as administrator.
#If you have issues please reach out to support@secureps.net
cd C:\Windows\Temp; wget update.senteon.co/installers/SenteonAgent.msi -UseBasicParsing -OutFile SenteonAgent.msi; msiexec /i "SenteonAgent.msi" /quiet ORGANIZATION="secure-point" TENANT="Burst_Billing" REGISTRATIONCODE="zVuqw1DfyCHX" AUTOEVAL="true" ACCEPTALL=YES /l*v "SenteonInstall.log"
