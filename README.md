# deepseek_web_demo
deepseek的可视化聊天，流式
# Simple Local Proxy Server

一个基于 Node.js 的本地代理服务器，可用于接口调试、请求转发等用途。提供一键启动脚本，便于快速部署和使用。

---

## 📁 项目结构

├── proxy.js # 代理服务器主逻辑

├── start-proxy.bat # Windows 一键启动脚本

├── package.json # Node.js 项目描述

├── node_modules/ # 第三方依赖（首次启动自动安装）

└──char.html # 前端文件

双击运行启动脚本
start-proxy.bat

成功后浏览器访问：
http://localhost:3000

🛠 使用说明
核心脚本为 proxy.js，你可以根据需求自定义代理规则。

默认监听端口为 3000，可根据需要修改 proxy.js 中的端口配置或 start-proxy.bat 脚本中的 PORT 变量。

📦 依赖安装说明
项目启动时会自动执行：
npm install

