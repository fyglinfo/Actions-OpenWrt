#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.123.99/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/10.10.10.6/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.$((addr_offset++)).1/10.10.$((addr_offset++)).4/g' package/base-files/files/bin/config_generate
echo -e "src-git lienol https://github.com/Lienol/openwrt-package" >> feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
cd openwrt && ./scripts/feeds update -a && ./scripts/feeds install -a
