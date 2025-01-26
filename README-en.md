# My Personal Configuration

A personalized configuration for VS Code and terminal, making me fall in love with coding ✍️

$\color{#666}{\textsf{One-click replacement code included}}$

[中文](https://github.com/lzy1960/myconfig/blob/main/README.md)

## Effect

![image](https://github.com/lzy1960/myconfig/assets/40552111/ed34b5d4-c569-469b-99f9-675089d96b14)

## System Fonts

Prefix:

- [Sarasa UI SC](https://github.com/be5invis/Sarasa-Gothic/releases)
- [UbuntuSans Nerd Font](https://www.nerdfonts.com/font-downloads) (Download the `UbuntuSans Nerd Font` at the bottom)

Use the [noMeiryoUI](https://github.com/Tatsu-syo/noMeiryoUI/releases) tool to modify system fonts.

> High versions of Windows have limitations, and some fonts cannot be replaced.
> The principle is to modify the registry, see https://github.com/Tatsu-syo/noMeiryoUI?tab=readme-ov-file#installation for details.

## PowerShell

### VS Code Configuration

[vscode-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/vscode-settings.json)

- Uses [Sarasa UI SC](https://github.com/be5invis/Sarasa-Gothic/releases) and [UbuntuSans](https://www.nerdfonts.com/font-downloads) fonts for better-looking Chinese and English characters.
- Uses the [Custom CSS and JS Loader](https://github.com/be5invis/vscode-custom-css) extension to beautify the UI and interactions.
- Global transition animations, some scenes have rebound effects, for a smoother and more dynamic experience.
- Frosted glass effect in some scenes, such as the right-click menu, sticky components, and notification components.
- Added shadow effects to some scenes, achieving a neon-like effect, such as the cursor.
- Exploring more beautification effects 🥰

![image](https://github.com/lzy1960/myconfig/assets/40552111/ab02510c-4fbf-4fe0-b3c7-cddfbd529f76)

```powershell
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/libs/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

Additionally, because the configuration introduces external js and css, you need to download them locally:

```powershell
# Download userscripts.js and userstyles.css locally
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userscripts.js" -OutFile "C:\users\\$env:UserName\\.vscode\\userscripts.js"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userstyles.css" -OutFile "C:\users\\$env:UserName\\.vscode\\userstyles.css"
```

Then, press `ctrl + shift + p` to open the command palette and enter `Reload Custom CSS and JS` to restart VS Code.


### PowerShell Configuration

[powershell-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/powershell-settings.json)

```powershell
# Filename contains hash value
# Method reference: https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/powershell-settings.json" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
```

## Oh My Posh

### PowerShell Startup Configuration

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/libs/Microsoft.PowerShell_profile.ps1)

Some plugins need to be installed, see https://github.com/lzy1960/powershell-config for detailed instructions.

```powershell
# If the error Invoke-WebRequest: Could not find a part of the path 'xxx' occurs, check if the parent directory of $PROFILE exists first.
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Zsh

### Zsh Configuration

Some plugins need to be installed, see https://www.stormlee.top/docs/wsl2/wsl2-new-install.html#oh-my-zsh-%E6%8F%92%E4%BB%B6 for detailed instructions.

[.zshrc](https://github.com/lzy1960/myconfig/blob/main/libs/.zshrc)

```bash
curl -o ~/.zshrc https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/.zshrc
```

### Starship Configuration

Starship needs to be installed first, see https://starship.rs/guide/#%F0%9F%9A%80-installation

[starship.toml](https://github.com/lzy1960/myconfig/blob/main/libs/starship.toml)

```bash
curl -o ~/.config/starship.toml https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml
```

If you also want to configure starship on Windows, use the following script:

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml" -OutFile "C:\users\\$env:UserName\\.config\\starship.toml"
