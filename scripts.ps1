$UltraviewerUrl = "https://dl2.ultraviewer.net/UltraViewer_setup_6.6_en.exe"
$DRMUrl = "https://download1594.mediafire.com/rtw9no3bfqzgO_f67z_RLkWh29icp75AhCMs88GsxaFfaubng6nLln2y24L1ZPVlBJitzu6qnNwJLiqzvQIWaPYV1W5hyGwH_reKG_ellhl1xrMnAPvR52R5ClNOBTXEBXIC0glGrW7qIbbRo2x8nvAk98rRFcxUazKhVqiSKvgynXlD/b9e1tnwfpk7q825/video-drm-tools-setup-2.0.0.exe"
$GoogleDriveUrl = "https://dl.google.com/drive-file-stream/GoogleDriveFSSetup.exe"
$ProgressPreference = 'SilentlyContinue'
Write-Host "Downloading UltraViewer..."
Invoke-WebRequest -Uri $UltraviewerUrl -OutFile "$env:TEMP\UltraViewer.exe"
# curl --progress-bar $UltraviewerUrl -o "$env:TEMP\UltraViewer.exe"
# Write-Host "Downloading DRM Tools..."
# Invoke-WebRequest -Uri $DRMUrl -OutFile "$env:TEMP\drm-tools.exe"
# curl --progress-bar $DRMUrl -o "$env:TEMP\drm-tools.exe

Write-Host "Installing UltraViewer..."
cmd /c "$env:TEMP\UltraViewer.exe" /DIR="C:\UltraViewer" /VERYSILENT /NORESTART
# Write-Host "Installing DRM Tools..."
# & "$env:TEMP\drm-tools.exe" /SILENT

& "C:\UltraViewer\UltraViewer_Desktop.exe"

Write-Host "Downloading Google Drive..."
Invoke-WebRequest -Uri $GoogleDriveUrl -OutFile "$env:TEMP\GoogleDriveFSSetup.exe"

Write-Host "Installing Google Drive..."
cmd /c "$env:TEMP\GoogleDriveFSSetup.exe" --silent

Write-Host "Downloading DRM Tools..."
Invoke-WebRequest -Uri $DRMUrl -OutFile "$env:TEMP\drm-tools.exe"

Write-Host "Installing DRM Tools..."
& "$env:TEMP\drm-tools.exe" /SILENT
