#!/bin/bash
# 自动推送记忆更新

echo "正在保存记忆..."
cd ~/session-context
/e/Git/cmd/git.exe add .
/e/Git/cmd/git.exe commit -m "自动更新记忆 - $(date '+%Y-%m-%d %H:%M:%S')"
/e/Git/cmd/git.exe push origin main

if [ $? -eq 0 ]; then
    echo "✅ 记忆已保存到云端"
else
    echo "❌ 推送失败，请检查网络"
fi
