#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#  关机
git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

#ShadowSocksR Plus+
git clone https://github.com/fw876/helloworld.git package/helloworld

#passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall

#passwall2
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2

#openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
