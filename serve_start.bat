@echo off
title 启动代理服务器 proxy.js
color 0A

:: 设置端口号（可修改）
set PORT=3000

:: 检查 Node.js 是否安装
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Node.js，请先安装 Node.js。
    pause
    exit /b
)

:: 检查依赖
if not exist "node_modules" (
    echo [依赖安装] 未发现 node_modules，执行 npm install...
    npm install
)

:: 检查 proxy.js 是否存在
if not exist "proxy.js" (
    echo [错误] 未找到 proxy.js 文件，请确保脚本存在于当前目录。
    pause
    exit /b
)

:: 启动 proxy.js（在后台运行）
echo [启动中] 启动 proxy.js 代理服务...
start "proxy_server" cmd /k "node proxy.js"

:: 等待服务可用再打开浏览器（最多等待 15 秒）
setlocal enabledelayedexpansion
set COUNTER=0
:wait_loop
curl http://localhost:%PORT% >nul 2>nul
if !errorlevel! equ 0 (
    echo [成功] 服务已启动，正在打开浏览器...
    start "" http://localhost:%PORT%/chat.html
    goto end
) else (
    set /a COUNTER+=1
    if !COUNTER! geq 15 (
        echo [失败] 服务未能在15秒内启动，未打开浏览器。
        goto end
    )
    timeout /t 1 >nul
    goto wait_loop
)

:end
pause
