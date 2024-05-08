#Requires -RunAsAdministrator

$packages = @(
    "Microsoft.PowerShell",
    "Mozilla.Firefox",
    "Google.Chrome",
    "JanDeDobbeleer.OhMyPosh",
    "Bitwarden.Bitwarden",
    "OBSProject.OBSStudio",
    "VideoLAN.VLC",
    "Zoom.Zoom",
    "SlackTechnologies.Slack",
    #"Microsoft.Teams",
    "StandardNotes.StandardNotes",
    "Git.Git",
    "Python.Python.3.12",
    "Notepad++.Notepad++",
    "Microsoft.VisualStudioCode",
    "Microsoft.AzureDataStudio"
    #"Adobe.Acrobat.Reader.64-bit",
    #"Microsoft.WindowsTerminal",
    #"AutoHotkey.AutoHotkey",
    #"7zip.7zip",
    #"XnSoft.XnViewMP",
    #"Microsoft.SQLServerManagementStudio"
)

foreach ($package in $packages) {
    try {
        winget install -e --id=$package
    }
    catch {
        Write-Host "Failed to install package: $package"
        Write-Host $_.Exception.Message
    }
}
