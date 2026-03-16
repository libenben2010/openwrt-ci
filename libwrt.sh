# --- 保持你原有的逻辑 (如果你也想给别的机器编固件就留着) ---
rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# --- 关键：为红米 AX5 极致瘦身 (新增部分) ---
# 强制删除大体积的地理位置数据库文件，这能省下约 15MB-20MB 空间
rm -rf package/feeds/pw_packages/xray-geodata
rm -rf package/feeds/packages/v2ray-geodata

# 确保默认 IP 不冲突 (改为红米常用的 31.1，或者你喜欢的)
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
