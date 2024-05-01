# 我的个人配置

> 附一键替换代码

[English](https://github.com/lzy1960/myconfig/blob/main/README-en.md)

## 系统字体

前置：

- [Sarasa UI SC (更纱黑体 UI SC)](https://github.com/be5invis/Sarasa-Gothic/releases)
- [UbuntuSans](https://www.nerdfonts.com/font-downloads)，找到最下方的`UbuntuSans Nerd Font`，点击`Download`下载

使用[noMeiryoUI](https://github.com/Tatsu-syo/noMeiryoUI/releases)工具修改系统字体

> windows 高版本受限，部分字体无法替换
> 原理是修改注册表，详见https://github.com/Tatsu-syo/noMeiryoUI?tab=readme-ov-file#installation

## Powershell

### vscode 配置

[vscode-settings.json](https://github.com/lzy1960/myconfig/blob/main/vscode-settings.json)

> [!WARNING]  
> MacOS 系统中，apc 插件的效果并不理想，苹果用户需要删除 `apc.xxx` 相关的配置，并自行调整`workbench.colorCustomizations`中的透明内容

```powershell
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

另外，由于配置中引入了外部 js 和 css，需要将二者下载到本地：

```powershell
# 将 userscripts.js 和 userstyles.css 下载到本地
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/apc-assets/userscripts.js" -OutFile "C:\users\\$env:UserName\\.vscode\\userscripts.js"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/apc-assets/userstyles.css" -OutFile "C:\users\\$env:UserName\\.vscode\\userstyles.css"
```

### powershell 配置

[powershell-settings.json](https://github.com/lzy1960/myconfig/blob/main/powershell-settings.json)

```powershell
# 文件名中带hash值
# 方法参考：https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/powershell-settings.json" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
```

## Oh My Posh

### powershell 启动配置

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/Microsoft.PowerShell_profile.ps1)

需要安装一些插件，详细教程参考：https://github.com/lzy1960/powershell-config

```powershell
# 如果报错Invoke-WebRequest: Could not find a part of the path 'xxx'，则先检查$PROFILE的前置目录是否存在
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Zsh

### zsh 配置

需要安装一些插件，详细教程参考：https://www.stormlee.top/docs/wsl2/wsl2-new-install.html#oh-my-zsh-%E6%8F%92%E4%BB%B6

[.zshrc](https://github.com/lzy1960/myconfig/blob/main/.zshrc)

```bash
curl -o ~/.zshrc https://raw.githubusercontent.com/lzy1960/myconfig/main/.zshrc
```

### starship 配置

需要先安装 starship，请参考：https://starship.rs/guide/#%F0%9F%9A%80-installation

[starship.toml](https://github.com/lzy1960/myconfig/blob/main/starship.toml)

```bash
curl -o ~/.config/starship.toml https://raw.githubusercontent.com/lzy1960/myconfig/main/starship.toml
```

如果 windows 也要配置了 starship，脚本如下：

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/starship.toml" -OutFile "C:\users\\$env:UserName\\.config\\starship.toml"
```
