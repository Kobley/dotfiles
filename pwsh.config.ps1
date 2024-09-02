[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module 'gsudoModule'
Invoke-Expression (&starship init powershell)
%USERPROFILE%\.dotfiles\completions.ps1
clear
