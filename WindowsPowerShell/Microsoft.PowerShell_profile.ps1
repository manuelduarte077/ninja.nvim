Import-Module posh-git
Import-Module oh-my-posh
Import-Module -Name Terminal-Icons
Set-PoshPrompt -Theme  atomic
Set-PSReadLineOption -PredictionSource History


function HelloWorld { echo "Hello World" }
New-Alias hello HelloWorld

function Home { Set-Location C:\ }
New-Alias home Home

function GoDevelop { Set-Location C:\WorkSpace\ }
New-Alias dev GoDevelop

function GoFlutter { Set-Location C:\WorkSpace\Flutter\ }
New-Alias df GoFlutter 

function GoKotlin { Set-Location C:\WorkSpace\Kotlin\ }
New-Alias kt GoKotlin 

function GoAndroid { Set-Location C:\WorkSpace\Android\ }
New-Alias an GoAndroid 

function GoNodeJS { Set-Location C:\WorkSpace\NodeJS\ }
New-Alias dn GoNodeJS

function GoDesktop { Set-Location $HOME\Desktop\ }
New-Alias dk GoDesktop

function GitStatus { git status }
New-Alias gs GitStatus

function GitAdd([string]$file) { git add "$file" }
New-Alias ga GitAdd

function GitCommit([string]$message) { git commit -m "$message" }
New-Alias gcmt GitCommit

function GitSwitchCreate([string]$branch) { git switch -c $branch }
New-Alias gswc GitSwitchCreate

function GitSwitch([string]$branch) { git switch $branch }
New-Alias gsw GitSwitch

function NewFile([string]$filePath) { 
  $match = Select-String -Pattern "^(.*(\\|\/))?(.*\.?.*?)$" -InputObject "$filePath"
  $path = pwd
  
  if ($match.Matches.groups[1].value -ne "") {
    $path = $match.Matches.groups[1].value
  }
  
  $fileName = $match.Matches.groups[3].value

  New-Item -Path "$path" -Name "$fileName" -ItemType "file"
  
}
New-Alias touch NewFile


# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
