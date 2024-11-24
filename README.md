# IMPORTANT FOR WINDOWS HOME EDITIONS 
(and maybe for all that have running scripts is disabled on their system)
Source:  https:/go.microsoft.com/fwlink/?LinkID=135170
So we have some scopes and some policies
"Bypass" will do the job, but for more permanent effect you may want to chose "Unrestricted"
1. Start PowerShell as Administrator
(it can be done in many ways)
1a. If you have already started powershell session you can use
start-process powershell -verb runas
1b. You can start it with right click on the start menu icon and chose Windows PowerShell (Administrator)
1c. You can search for powershell in the startmenu and chose the option Run as administrator
1d. Press Win+r and type "powershell". After that press Ctrl+Shift+Enter
2. Run the following command:
2a. For Current Session only we use "Process" scope and "ByPass" or "Unrestricted" policy:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy ByPass
2b. For Current User only we use "CurrentUser" scope and "ByPass" or "Unrestricted" policy:
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy ByPass
3. Confirm with Y or A

# Video Demos:

Create Virtual Machines Dynamically in Hyper-V via PowerShell Script:
https://www.youtube.com/watch?v=qBU_1n2gOhg

Quick AD DC setup + 2 client Servers:
https://www.youtube.com/watch?v=S3dEPJ83gk0
