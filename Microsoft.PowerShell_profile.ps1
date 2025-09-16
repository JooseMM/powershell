# Import modules
Import-Module Terminal-Icons

# Init Starship prompt
Invoke-Expression (& starship init powershell)

# Enable VI mode
Set-PSReadLineOption -EditMode Vi

# Remove default 
Remove-Item Alias:ls

# Aliases
Set-Alias ls "eza"

function Code-Directory {
 Set-Location "L:\code"
}

# Enviroment Variables
$env:CONFIG_DIRECTORY = "C:\Users\josex\.config"

# Starship Config Directory
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
# Neovim Config Directory
$env:XDG_CONFIG_HOME = "$env:USERPROFILE\.config\"
