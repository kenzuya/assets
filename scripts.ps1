$UltraviewerUrl = "https://download2269.mediafire.com/sgpd3edhc1pg99SpcwjVEsM4NQTZKrOcPkA3fi4PvpmPLP22n7w1L-csQ0MHxZAPPG3T7GvZoU4nTEIc-RyzXU1yAFU2Z5uVtdl9Rf_GvV6jlJl3pLh1NB-5fjWnVigcAUP4Jk-1vKekLEU8cDbpJl7JFylFZuHAdVQGgZa-IQzbUP4/jwcgpuoclv11f00/UltraViewer_setup_6.6_en.exe"
$DRMUrl = "https://download942.mediafire.com/thz0mt23x8rgst0G3d3canEaBVQNd3fLDWPz4inJrX8iNn-XDRvqrrXK-bRX4h7VGYheArJNv3-PNv6HS-pC7hFVl6Wraq_zeDFH9OGhCRgUTiEumXiuAd2K1cmdPr4J1H6dxyCuSNtNlfDhag00WnNEMxTuTcP2n7HO5Paw_NCs4hc/etdm165mcqqbun6/video-drm-tools-setup-2.0.0.exe"
$ProgressPreference = 'SilentlyContinue'
Write-Host "Downloading UltraViewer..."
Invoke-WebRequest -Uri $UltraviewerUrl -OutFile "$env:TEMP\UltraViewer.exe"
# curl --progress-bar $UltraviewerUrl -o "$env:TEMP\UltraViewer.exe"
Write-Host "Downloading DRM Tools..."
Invoke-WebRequest -Uri $DRMUrl -OutFile "$env:TEMP\drm-tools.exe"
# curl --progress-bar $DRMUrl -o "$env:TEMP\drm-tools.exe

Write-Host "Installing UltraViewer..."
& "$env:TEMP\UltraViewer.exe" /VERYSILENT /NORESTART
Write-Host "Installing DRM Tools..."
& "$env:TEMP\drm-tools.exe" /SILENT

& "$env:ProgramFiles\UltraViewer\UltraViewer_Desktop.exe"
