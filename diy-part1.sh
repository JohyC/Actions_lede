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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/MrH723/openwrt-packages.git package/openwrt-packages
#sed -i '$a src-git MrH723 https://github.com/MrH723/openwrt-packages' feeds.conf.default

#编译ax3600
rm openwrt/target/linux/ipq807x/config-5.10
cp AX3600/config-5.10 openwrt/target/linux/ipq807x/config-5.10
