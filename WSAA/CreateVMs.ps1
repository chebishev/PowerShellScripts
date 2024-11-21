# This script generates Virtual Machines in Hyper-V with the following parameters:
# - Generation 2
# - 2GB of RAM
# - Getting the Virtual Hard Disk from vhdx template, that must be named as the VM)
# - Using the Nat vSwitch

# Define VM name range (e.g., SERVER1, SERVER2)
$minimumVMCount = 1
$maximumVMCount = 2

# Generate an array of server names (SERVER1, SERVER2, etc.)
$vms = $minimumVMCount..$maximumVMCount | ForEach-Object { "SERVER$_" }
Write-Host "VM names generated successfully." -ForegroundColor Green
Write-Host "VM names: $vms" -ForegroundColor Green

# if you want to use the list of the created VMs, uncomment this
# $vms | Out-File -FilePath "$env:USERPROFILE\vms.txt"
# Write-Host "VM names saved to $env:USERPROFILE\vms.txt" -ForegroundColor Green

# Rename machines using the stored credentials
$vms | ForEach-Object {
    $vmName = $_
    New-VM `
    -Name $vmName `
    -Generation 2 `
    -MemoryStartupBytes 2gb `
    -VHDPath "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\${vmName}.vhdx" `
    -SwitchName "Nat vSWitch"
}
