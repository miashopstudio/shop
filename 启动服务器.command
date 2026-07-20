#!/bin/bash
cd "$(dirname "$0")"

# 獲取本機 IP
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null || echo "localhost")

echo "╔══════════════════════════════════╗"
echo "║     🐼 圓胖商店 · 伺服器       ║"
echo "╠══════════════════════════════════╣"
echo "║                                  ║"
echo "║   📱 手機端打開：               ║"
echo "║   http://$IP:8080/圓胖的商店_store.html"
echo "║                                  ║"
echo "║   💻 電腦端打開：               ║"
echo "║   http://localhost:8080/圓胖的商店_store.html"
echo "║                                  ║"
echo "║   按 Ctrl+C 停止伺服器           ║"
echo "╚══════════════════════════════════╝"
echo ""

python3 -m http.server 8080
