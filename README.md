<div align="center">

<h1>我的个人配置</h1>

<p>私人定制的 vscode 与 terminal 配置，使我爱上写代码 ✍️</p>

$\color{#666}{\textsf{附一键替换代码}}$

<a href="https://github.com/lzy1960/myconfig/blob/main/README-en.md" target="_blank">English</a>

</div>

## 效果展示

![image](https://github.com/lzy1960/myconfig/assets/40552111/ed34b5d4-c569-469b-99f9-675089d96b14)

## 系统字体

前置：

- [Sarasa UI SC (更纱黑体 UI SC)](https://github.com/be5invis/Sarasa-Gothic/releases)
- [UbuntuSans](https://www.nerdfonts.com/font-downloads)，找到最下方的`UbuntuSans Nerd Font`，点击`Download`下载

使用[noMeiryoUI](https://github.com/Tatsu-syo/noMeiryoUI/releases)工具修改系统字体

> windows 高版本受限，部分字体无法替换
> 原理是修改注册表，详见https://github.com/Tatsu-syo/noMeiryoUI?tab=readme-ov-file#installation

## Powershell

### vscode 配置

[vscode-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/vscode-settings.json)

- 字体使用 [Sarasa UI SC (更纱黑体 UI SC)](https://github.com/be5invis/Sarasa-Gothic/releases)与[UbuntuSans](https://www.nerdfonts.com/font-downloads)，使中英文更加美观
- 使用扩展程序 [Custom CSS and JS Loader](https://github.com/be5invis/vscode-custom-css) 美化 UI 与交互
- 全局过渡动画，部分场景拥有回弹效果，体验更加丝滑与灵动
- 部分场景的的毛玻璃效果，例如右键菜单、粘性组件、通知组件等等
- 部分场景添加了阴影效果，实现类霓虹效果，例如光标
- 探索更多美化效果 🥰

![image](https://github.com/lzy1960/myconfig/assets/40552111/ab02510c-4fbf-4fe0-b3c7-cddfbd529f76)

```powershell
Invoke-WebRequest -Uri "https://github.com/lzy1960/myconfig/raw/main/libs/vscode-settings.json" -OutFile "$env:APPDATA\Code\User\settings.json"
```

另外，由于配置中引入了外部 js 和 css，需要将二者下载到本地：

```powershell
# 将 userscripts.js 和 userstyles.css 下载到本地
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userscripts.js" -OutFile "C:\users\\$env:UserName\\.vscode\\userscripts.js"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/vscode-custom-css-js/userstyles.css" -OutFile "C:\users\\$env:UserName\\.vscode\\userstyles.css"
```

然后 ctrl + shift + p 打开命令面板，输入 `Reload Custom CSS and JS` 重启 vscode

### powershell 配置

[powershell-settings.json](https://github.com/lzy1960/myconfig/blob/main/libs/powershell-settings.json)

```powershell
# 文件名中带hash值
# 方法参考：https://stackoverflow.com/questions/64030699/where-is-settings-json-for-powershell-configuration-in-windows-terminal
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/powershell-settings.json" -OutFile "$(Get-Item ("C:\users\\$env:UserName\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState\settings.json")).FullName"
```

## Oh My Posh

### powershell 启动配置

[Microsoft.PowerShell_profile.ps1](https://github.com/lzy1960/myconfig/blob/main/libs/Microsoft.PowerShell_profile.ps1)

需要安装一些插件，详细教程参考：https://github.com/lzy1960/powershell-config

```powershell
# 如果报错Invoke-WebRequest: Could not find a part of the path 'xxx'，则先检查$PROFILE的前置目录是否存在
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/Microsoft.PowerShell_profile.ps1" -OutFile "$PROFILE"
```

## Oh My Zsh

### zsh 配置

需要安装一些插件，详细教程参考：https://www.stormlee.top/docs/wsl2/wsl2-new-install.html#oh-my-zsh-%E6%8F%92%E4%BB%B6

[.zshrc](https://github.com/lzy1960/myconfig/blob/main/libs/.zshrc)

```bash
curl -o ~/.zshrc https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/.zshrc
```

### starship 配置

需要先安装 starship，请参考：https://starship.rs/guide/#%F0%9F%9A%80-installation

[starship.toml](https://github.com/lzy1960/myconfig/blob/main/libs/starship.toml)

```bash
curl -o ~/.config/starship.toml https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml
```

如果 windows 也要配置了 starship，脚本如下：

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/lzy1960/myconfig/main/libs/starship.toml" -OutFile "C:\users\\$env:UserName\\.config\\starship.toml"
```
