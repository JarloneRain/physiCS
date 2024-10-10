#!/bin/bash

# 检查是否提供了参数
if [ $# -eq 1 ]; then
    COMMIT_MESSAGE=$1
else
    COMMIT_MESSAGE="无"
fi

# 添加所有更改
git add .

# 提交更改
git commit -m "$COMMIT_MESSAGE"


# 推送到GitHub
git push

echo "代码已成功提交并推送到GitHub。"