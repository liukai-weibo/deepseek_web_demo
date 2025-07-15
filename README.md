English Version
Simple Local Proxy Server
A Node.js based local proxy server designed for API debugging and request forwarding. Comes with a Windows one-click startup script for easy deployment.

📁 Project Structure

├── proxy.js           # Main proxy server logic

├── start-proxy.bat    # Windows one-click startup script

├── package.json       # Node.js project manifest

├── node_modules/      # Dependencies (installed automatically on first run)

└── char.html          # Frontend page file
🚀 Quick Start
Double-click to run the startup script:

bat
start-proxy.bat
After successful startup, your browser will automatically open to:

arduino
http://localhost:3000
🛠 Usage
The core script is proxy.js. You can customize proxy rules as needed.

Default listening port is 3000. Modify it in proxy.js or the PORT variable inside start-proxy.bat if needed.

📦 Dependencies
Dependencies will be installed automatically on startup:

bash
npm install
