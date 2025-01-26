# Oh My Posh 配置
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\PowerLine.omp.json" | Invoke-Expression

# 五彩斑斓的命令行
Import-Module PSColor
# 用于检测git分支状态
Import-Module posh-git
# git 别名
Import-Module git-aliases -DisableNameChecking

Import-Module PSReadLine
#快捷键设置
# 设置预测文本来源为历史记录
Set-PSReadLineOption -PredictionSource History
# 每次回溯输入历史，光标定位于输入内容末尾
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
# 设置 Tab 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Tab" -Function MenuComplete
# 设置 Ctrl+d 为退出 PowerShell
Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
# 设置预测文本的颜色
Set-PSReadLineOption -Colors @{ InlinePrediction = "#267233" }

# 移除默认的 ni 命令
Remove-Item Alias:ni -Force

# npm alias
function n {
  npm $args
}
function ni {
  npm i $args
}
function nun {
  npm uninstall $args
}
function nung {
  nun -g $args
}
function nls {
  npm ls $args
}
function nlsg {
  nls -g $args
}
function nr {
  npm run $args
}
function nst {
  nr start
}
function nd {
  nr dev
}
function nse {
  nr serve
}
function nb {
  nr build
}
function nt {
  nr test
}
function nl {
  nr lint
}
function nig {
  ni -g $args
}
function nid {
  ni -D $args
}
function nigd {
  ni -gD $args
}
function nup {
  npm update $args
}
function nug {
  nu -g
}

# pnpm alias
function p {
  pnpm $args
}
function pi {
  pnpm i $args
}
function prm {
  pnpm remove $args
}
function pu {
  pnpm update $args
}
function pug {
  pu -g $args
}
function pls {
  pnpm ls $args
}
function plsg {
  pnpm ls -g $args
}
function pa {
  pnpm add $args
}
function pr {
  pnpm run $args
}
function pst {
  pr start
}
function pd {
  pr dev
}
function pse {
  pr serve
}
function pb {
  pr build
}
function pt {
  pr test
}
function pl {
  pr lint
}
function pig {
  pi -g $args
}
function pid {
  pnpm i -D $args
}
function pigd {
  pi -gD $args
}

# yarn alias
function y {
  yarn
}
function ya {
  ya $args
}
function yad {
  ya -D $args
}
function yrm {
  yarn remove $args
}
function yls {
  yarn list $args
}
function yu {
  yarn upgrade $args
}
function yg {
  yarn global $args
}
function yga {
  yg add $args
}
function ygad {
  yga -D $args
}
function ygrm {
  yg remove $args
}
function ygls {
  yg list
}
function ygu {
  yg upgrade $args
}
function yr {
  yarn run $args
}
function yst {
  yr start
}
function yd {
  yr dev
}
function ys {
  yr serve
}
function yb {
  yr build
}
function yt {
  yr test
}
function yl {
  yr lint
}

# vscode
function c {
  param($path='.')
  code $path
}

# rimraf
function rim {
  If ($args.length -le 0) {
    rimraf './node_modules/'
  } Else {
    rimraf $args
  }
}
