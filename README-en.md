<div align="center">

<h1>My Personal Configuration</h1>

<p>A personalized VS Code and terminal configuration that makes me love coding ✍️</p>

$\color{#666}{\textsf{One-click replacement code included}}$

<a href="https://github.com/lzy1960/myconfig/blob/main/README.md" target="_blank">中文</a>

</div>

## Showcase

![image](https://github.com/lzy1960/myconfig/assets/40552111/ed34b5d4-c569-469b-99f9-675089d96b14)

## System Fonts

**Prerequisites:**

- [Sarasa UI SC](https://github.com/be5invis/Sarasa-Gothic/releases)
- Download [UbuntuSans Nerd Font](https://www.nerdfonts.com/font-downloads) (Download the `UbuntuSans Nerd Font` at the bottom of the page)

Use the [noMeiryoUI](https://github.com/Tatsu-syo/noMeiryoUI/releases) tool to change your system fonts.

> Higher versions of Windows have limitations; some fonts may not be replaceable.
> This involves modifying the registry.  See https://github.com/Tatsu-syo/noMeiryoUI?tab=readme-ov-file#installation for details.


## PowerShell

### VS Code Configuration

[vscode-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/vscode-settings.json)

- Uses [Sarasa UI SC](https://github.com/be5invis/Sarasa-Gothic/releases) and [UbuntuSans](https://www.nerdfonts.com/font-downloads) fonts for improved readability of both Chinese and English text.
- Uses the [Custom CSS and JS Loader](https://github.com/be5invis/vscode-custom-css) extension to customize the UI and interactions.
- Includes global transition animations; some scenes have bounce effects for a smoother experience.
- Applies a frosted glass effect to certain elements, such as the right-click menu, sticky components, and notifications.
- Adds shadow effects to create a neon-like appearance for elements like the cursor.
- Continuously exploring more customization options 🥰

![image](https://github.com/lzy1960/myconfig/assets/40552111/ab02510c-4fbf-4fe0-b3c7-cddfbd529f76)

```powershell
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/libs/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

Because this configuration uses external JS and CSS files, you need to download them locally:

```powershell
# Download userscripts.js and userstyles.css
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userscripts.js" -OutFile "C:\users\\$env:UserName\\.vscode\\userscripts.js"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userstyles.css" -OutFile "C:\users\\$env:UserName\\.vscode\\userstyles.css"
```

Then, press `ctrl + shift + p` to open the command palette and type `Reload Custom CSS and JS` to restart VS Code.


### PowerShell Configuration

[powershell-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/powershell-settings.json)

```powershell
# The filename includes a hash value.
# See: https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/powershell-settings.json" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
```

## Oh My Posh

### PowerShell Startup Configuration

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/libs/Microsoft.PowerShell_profile.ps1)

You'll need to install some plugins.  See https://github.com/lzy1960/powershell-config for instructions.

```powershell
# If you get the error "Invoke-WebRequest: Could not find a part of the path 'xxx'", check that the parent directory of $PROFILE exists.
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Zsh

### Zsh Configuration

You'll need to install some plugins.  See https://www.stormlee.top/docs/wsl2/wsl2-new-install.html#oh-my-zsh-%E6%8F%92%E4%BB%B6 for instructions.

[.zshrc](https://github.com/lzy1960/myconfig/blob/main/libs/.zshrc)

```bash
curl -o ~/.zshrc https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/.zshrc
```

### Starship Configuration

You need to install Starship first. See https://starship.rs/guide/#%F0%9F%9A%80-installation

[starship.toml](https://github.com/lzy1960/myconfig/blob/main/libs/starship.toml)

```bash
curl -o ~/.config/starship.toml https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml
```

If you also want to configure Starship on Windows, use this script:

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml" -OutFile "C:\users\\$env:UserName\\.config\\starship.toml"
