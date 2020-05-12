clear
neofetch
"Hello, n4hte!"
"-------------"
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Powerline
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
