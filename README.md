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

```bash
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

### powershell 启动配置

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/Microsoft.PowerShell_profile.ps1)

需要安装一些插件，详细教程参考：https://github.com/lzy1960/powershell-config

```bash
# 如果报错Invoke-WebRequest: Could not find a part of the path 'xxx'，则先检查$PROFILE的前置目录是否存在
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Posh

### powershell 配置

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/Microsoft.PowerShell_profile.ps1)

```bash
# 文件名中带hash值
# 方法参考：https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/Microsoft.PowerShell_profile.ps1" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
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
