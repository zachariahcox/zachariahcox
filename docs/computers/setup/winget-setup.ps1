<#
Run this script as Administrator. 
A Windows restart may be required for some changes.
$> Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass


This script will perform the following installations and system changes:

- Install most software from winget:
    - Slack
    - Zoom
    - Discord
    - Spotify
    - Visual Studio Code (Insiders)
    - 1Password
    - PowerToys
    - PowerShell (MS)
    - Windows Terminal
    - Steam
- Some software is not on winget and will be downloaded directly:
    - NVIDIA App Installer
    - Razer Synapse Installer
- Install, configure and upgrade WSL:
    - Enable Virtual Machine Platform and Windows Subsystem for Linux
    - Update WSL components and set WSL2 as the default
    - Install or ensure `Ubuntu-24.04` is present and set as the default distro
#>
# Ensure script is running elevated
if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
	Write-Warning "This script must be run as Administrator. Right-click PowerShell and select 'Run as Administrator'."
	exit 1
}

$apps = @(
    "SlackTechnologies.Slack",
    "Zoom.Zoom",
    "Discord.Discord",
    "Spotify.Spotify",
    "Microsoft.VisualStudioCode.Insiders",
    "AgileBits.1Password",
    "Microsoft.PowerToys",
    "Microsoft.PowerShell",
    "Microsoft.WindowsTerminal",
    "Valve.Steam",
    "Guru3D.Afterburner",
    "RazerInc.RazerInstaller.Synapse3"
)

# update registries
winget source update

# Track failed installs (capture detailed output)
$failedPackages = @()
foreach ($app in $apps) {
    Write-Host "Installing $app..."
    try {
        $output = & winget install --id $app --exact --silent --accept-package-agreements --accept-source-agreements 2>&1
        if ($LASTEXITCODE -ne 0) {
            $joined = $output -join "`n"
            Write-Warning "Installation failed for $app (exit code $LASTEXITCODE)"
            $failedPackages += "$app - ExitCode $LASTEXITCODE`n$joined"
        } else {
            Write-Host "$app installed successfully"
        }
    } catch {
        $err = $_.ToString()
        Write-Warning "Installation failed for $app: $err"
        $failedPackages += "$app - Exception: $err"
    }
}

# upgrade all winget packages
try {
    & winget upgrade --all
    if ($LASTEXITCODE -ne 0) {
        Write-Warning "Some winget upgrades returned non-zero exit code: $LASTEXITCODE"
    }
} catch {
    Write-Warning "winget upgrade failed: $_"
}

# Summarize any failed installs to a log
if ($failedPackages.Count -gt 0) {
    $logDir = "$env:USERPROFILE\Downloads\SetupTools"
    New-Item -ItemType Directory -Path $logDir -Force | Out-Null
    $logPath = Join-Path $logDir "winget-failures.log"
    "Failed winget installs - $(Get-Date)" | Out-File -FilePath $logPath -Encoding utf8
    "---" | Out-File -FilePath $logPath -Append -Encoding utf8
    foreach ($entry in $failedPackages) {
        $entry | Out-File -FilePath $logPath -Append -Encoding utf8
        "---" | Out-File -FilePath $logPath -Append -Encoding utf8
    }
    Write-Host "`n⚠️ Some packages failed to install via winget. See $logPath for details."
} else {
    Write-Host "`nAll winget packages installed successfully."
}

# Create a downloads directory
$downloadPath = "$env:USERPROFILE\Downloads\SetupTools"
New-Item -ItemType Directory -Path $downloadPath -Force | Out-Null

# Download NVIDIA App
try {
    Write-Host "Downloading NVIDIA App..."
    $nvidiaUrl = "https://international.download.nvidia.com/nvidia/app/nvidiaapp/latest/NVIDIAAppInstaller.exe"
    $nvidiaInstaller = "$downloadPath\NVIDIAAppInstaller.exe"
    Invoke-WebRequest -Uri $nvidiaUrl -OutFile $nvidiaInstaller
    Start-Process -FilePath $nvidiaInstaller -ArgumentList "/S" -Wait
    Write-Host "NVIDIA App installed successfully"
} catch {
    Write-Warning "Failed to download or install NVIDIA App: $_"
    Write-Host "Please download manually from: https://www.nvidia.com/en-us/software/nvidia-app/"
}

# --- WSL: enable features, update, and install latest Ubuntu ---
Write-Host "`n--> Ensuring WSL and Virtual Machine Platform features are enabled"
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart | Out-Null
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart | Out-Null

Write-Host "Updating WSL system components (requires internet)"
wsl --update

# Set WSL2 as the default version
Write-Host "Setting WSL default version to 2"
wsl --set-default-version 2

# Install or upgrade to Ubuntu 24.04 (the latest LTS as of 2025)
Write-Host "Installing Ubuntu 24.04 (or ensuring it's installed)"
wsl --install -d Ubuntu-24.04

# Mark Ubuntu-24.04 as default distro if installed
try {
	wsl --set-default Ubuntu-24.04
} catch {
	# if setting default fails, ignore and continue
}

# Restart WSL to pick up updates
wsl --shutdown

Write-Host "`n✅ Windows apps installed and WSL updated. Launch WSL (Ubuntu 24.04) to complete Linux-side setup."
