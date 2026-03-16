# --- 雅典娜 LED 逻辑 (按你之前的要求保留) ---
rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# --- 极致瘦身：删除 Geodata (这是保证 35MB 目标的关键) ---
# 删掉这些后，Sing-box 的体积会大幅减小
rm -rf package/feeds/pw_packages/xray-geodata
rm -rf package/feeds/packages/v2ray-geodata

# --- 备注：已移除 IP 修改命令，保持默认 192.168.1.1 ---
