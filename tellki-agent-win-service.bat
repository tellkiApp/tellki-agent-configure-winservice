@ECHO OFF

REM This script was developed by Guberni and is part of Tellki's Monitoring Solution
REM DATE: December, 2014
REM VERSION: 1.0
REM DESCRIPTION: Configure Tellki Agent to run as a windows service
REM IMPORTANT: Script must be run as administrator

@setlocal enableextensions

echo Installing Tellki Agent service...
nssm install "Tellki Agent" "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\npm\tellki-agent.cmd"
nssm set "Tellki Agent" AppDirectory "%HOMEDRIVE%%HOMEPATH%\AppData\Roaming\npm"
nssm set "Tellki Agent" Description "Remotely or locally monitor server resources, applications and databases. Monitored data collected is sent to Tellki central application where it is processed and displayed."

echo Starting service...
net start "Tellki Agent"