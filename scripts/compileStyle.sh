#!/bin/bash

INPUT_FILE="vscode-custom-css-js/less/userstyles.less"
OUTPUT_FILE="vscode-custom-css-js/userstyles.css"

# 检查 LESS 文件是否存在
if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: LESS file '$INPUT_FILE' not found!"
  exit 1
fi

# 使用 lessc 编译 LESS 文件为 CSS
lessc "$INPUT_FILE" "$OUTPUT_FILE"

# 输出转换结果
if [ $? -eq 0 ]; then
  echo "Successfully converted '$INPUT_FILE' to '$OUTPUT_FILE'"
else
  echo "Error: Conversion failed."
  exit 1
fi
