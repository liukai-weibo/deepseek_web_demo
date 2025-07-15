Simple Local Proxy Server
A Node.js based local proxy server designed for API debugging and request forwarding. Comes with a Windows one-click startup script for easy deployment.

📁 Project Structure

├── proxy.js           # Main proxy server logic

├── start-proxy.bat    # Windows one-click startup script

├── package.json       # Node.js project manifest

├── node_modules/      # Dependencies (installed automatically on first run)

└── char.html          # Frontend page file

🚀 Quick Start
前提是ollama先把deepseek运行出来:ollama serve

1.Extract the **node_rodules.rar** file after the first pull

2.Double-click to run the startup script: **start-proxy.bat**

After successful startup, your browser will automatically open to: **http://localhost:3000**

The core script is **proxy.js**. You can customize proxy rules as needed.

Default listening port is **3000**. Modify it in proxy.js or the PORT variable inside start-proxy.bat if needed.

📦 Dependencies

Dependencies will be installed automatically on startup:**npm install**

ollama 端口占用问题解决：

1.右下角关闭ollama小程序（ollama list 会导致程序重新启动导致ollama端口占用）

2.查看占用端口：
netstat -ano | findstr :<占用端口>

3.杀死占用端口进程：
taskkill /PID <占用端口的id> /F

4.重启ollama服务：
ollama serve。
