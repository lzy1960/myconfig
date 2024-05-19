<div align="center">

<h1>My personal configuration</h1>

<p>Personalized vscode and terminal configuration make me fall in love with writing code ✍️</p>

$\color{#666}{\textsf{Attached is one-click replacement code}}$

</div>

## Effect

![image](https://github.com/lzy1960/myconfig/assets/40552111/ed34b5d4-c569-469b-99f9-675089d96b14)

## System font

Prefix:

- [Sarasa UI SC (更纱黑体 UI SC)](https://github.com/be5invis/Sarasa-Gothic/releases)
- [UbuntuSans](https://www.nerdfonts.com/font-downloads), find the `UbuntuSans Nerd Font` at the bottom, click `Download` to download

Use the [noMeiryoUI](https://github.com/Tatsu-syo/noMeiryoUI/releases) tool to modify the system font

> Windows higher versions are limited and some fonts cannot be replaced
> The principle is to modify the registry, see https://github.com/Tatsu-syo/noMeiryoUI?tab=readme-ov-file#installation for details

## Powershell

### vscode configuration

[vscode-settings.json](https://github.com/lzy1960/myconfig/blob/main/vscode-settings.json)

- Use [Sarasa UI SC (更纱黑体 UI SC)](https://github.com/be5invis/Sarasa-Gothic/releases) and [UbuntuSans](https://www.nerdfonts.com/font-downloads) as fonts to make Chinese and English more beautiful
- Use the extension [Apc Customize UI++](https://marketplace.visualstudio.com/items?itemName=drcika.apc-extension) to beautify UI and interaction
- Global transition animation, some scenes have rebound effect, experience more smooth and smart
- Frosted glass effect in some scenes, such as right-click menu, sticky components, notification components, etc.
- Add shadow effect to some scenes to achieve neon-like effect, such as cursor
- Explore more beautification effects 🥰

![image](https://github.com/lzy1960/myconfig/assets/40552111/ab02510c-4fbf-4fe0-b3c7-cddfbd529f76)

> [!WARNING]
> In MacOS system, the effect of apc plug-in is not ideal. Mac users need to delete the configuration related to `apc.xxx` and adjust the transparent content in `workbench.colorCustomizations` by themselves.

```powershell
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

In addition, since external js and css are introduced in the configuration, they need to be downloaded locally:

```powershell
# Download userscripts.js and userstyles.css to local
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/userscripts.js" -OutFile "C:\users\\$env:UserName\\.vscode\\userscripts.js"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/userstyles.css" -OutFile "C:\users\\$env:UserName\\.vscode\\userstyles.css"
```

### powershell startup configuration

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/Microsoft.PowerShell_profile.ps1)

Some plug-ins need to be installed, please refer to the detailed tutorial: https://github.com/lzy1960/powershell-config

```powershell
# If the error Invoke-WebRequest: Could not find a part of the path 'xxx' is reported, first check whether the front directory of $PROFILE exists.
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Posh

### powershell configuration

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/Microsoft.PowerShell_profile.ps1)

```powershell
# File name with hash value
# Method reference: https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/Microsoft.PowerShell_profile.ps1" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData \Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
```

## Oh My Zsh

### zsh configuration

You need to install some plug-ins, please refer to the detailed tutorial: https://www.stormlee.top/docs/wsl2/wsl2-new-install.html#oh-my-zsh-%E6%8F%92%E4%BB%B6

[.zshrc](https://github.com/lzy1960/myconfig/blob/main/.zshrc)

```bash
curl -o ~/.zshrc https://raw.githubusercontent.com/lzy1960/myconfig/main/.zshrc
```

### starship configuration

You need to install starship first, please refer to: https://starship.rs/guide/#%F0%9F%9A%80-installation

[starship.toml](https://github.com/lzy1960/myconfig/blob/main/starship.toml)

```bash
curl -o ~/.config/starship.toml https://raw.githubusercontent.com/lzy1960/myconfig/main/starship.toml
```

If windows also needs to be configured with starship, the script is as follows:

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/starship.toml" -OutFile "C:\users\\$env:UserName\\.config\\starship.toml"
```
