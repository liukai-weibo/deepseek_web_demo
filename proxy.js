const http = require("http");
const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

app.post("/chat", async (req, res) => {
  try {
    const proxyReq = http.request(
      {
        hostname: "127.0.0.1",
        port: 11434,
        path: "/api/chat",
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
      },
      proxyRes => {
        res.setHeader("Content-Type", "text/event-stream"); // 设置SSE头部
        proxyRes.pipe(res); // 直接流转发
      }
    );

    proxyReq.write(JSON.stringify(req.body));
    proxyReq.end();
  } catch (error) {
    console.error("Proxy error:", error);
    res.status(500).send("代理失败");
  }
});

app.use(express.static("."));

app.listen(3000, () => {
  console.log("✅ 流式代理启动成功: http://localhost:3000/chat.html");
});
