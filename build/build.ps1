[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $Version
)

Invoke-Webrequest "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v$Version.tar.gz" -OutFile "v$Version.tar.gz"
$fileHash = Get-FileHash -Algorithm SHA256 -Path "v$Version.tar.gz"
$hash = $fileHash.Hash.ToLower()
Remove-Item -Path "v$Version.tar.gz"
$content = Get-Content './oh-my-posh.txt' -Raw
$content = $content.Replace('<VERSION>', $Version)
$content = $content.Replace('<SHA256>', $hash)
$content | Out-File -Encoding 'UTF8' '../oh-my-posh.rb'
