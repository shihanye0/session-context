#!/bin/bash
# 自动拉取最新记忆

echo "正在获取最新记忆..."
cd ~/session-context
/e/Git/cmd/git.exe pull origin main

if [ $? -eq 0 ]; then
    echo "✅ 记忆已更新"
    echo "最后更新时间: $(date)"
else
    echo "❌ 拉取失败，请检查网络"
fi
