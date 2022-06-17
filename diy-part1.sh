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

# fix upx ucl 不存在;
apt install subversion -y
svn export --force https://github.com/coolsnowwolf/lede/trunk/tools/upx tools/upx
svn export --force https://github.com/coolsnowwolf/lede/trunk/tools/ucl tools/ucl
echo -e '\ntools-y += ucl upx \n$(curdir)/upx/compile := $(curdir)/ucl/compile' >> tools/Makefile
