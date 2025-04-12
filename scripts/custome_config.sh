#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
# 禁用docker
sed -i -e 's/CONFIG_PACKAGE_dockerd=y/# CONFIG_PACKAGE_dockerd is not set/g' configs/rockchip-docker/06-docker
sed -i -e 's/CONFIG_PACKAGE_docker-compose=y/# CONFIG_PACKAGE_docker-compose is not set/g' configs/rockchip-docker/06-docker
sed -i -e 's/CONFIG_PACKAGE_luci-app-dockerman=y/# CONFIG_PACKAGE_luci-app-dockerman is not set/g' configs/rockchip-docker/06-docker
# 禁用iptables
sed -i -e '/^CONFIG_PACKAGE_iptables-/ s/^\(.*\)=y$/# \1 is not set/' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IPTABLES_CONNLABEL=y/# CONFIG_IPTABLES_CONNLABEL is not set/g' configs/rockchip/01-nanopi
# 禁用luci-app-statistics 流量统计
sed -i -e '/^CONFIG_PACKAGE_collectd-/ s/^\(.*\)=y$/# \1 is not set/' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_collectd=y/# CONFIG_PACKAGE_collectd is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_luci-app-statistics=y/# CONFIG_PACKAGE_luci-app-statistics is not set/g' configs/rockchip/01-nanopi
# 禁用luci-app-minidlna
sed -i -e 's/CONFIG_PACKAGE_luci-app-minidlna=y/# CONFIG_PACKAGE_luci-app-minidlna is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_minidlna=y/# CONFIG_PACKAGE_minidlna is not set/g' configs/rockchip/01-nanopi
# 禁用luci-app-nlbwmon带宽流量统计
sed -i -e 's/CONFIG_PACKAGE_luci-app-nlbwmon=y/# CONFIG_PACKAGE_luci-app-nlbwmon is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_nlbwmon=y/# CONFIG_PACKAGE_nlbwmon is not set/g' configs/rockchip/01-nanopi
# 禁用luci-app-sqm 流量QOS
sed -i -e 's/CONFIG_PACKAGE_luci-app-sqm=y/# CONFIG_PACKAGE_luci-app-sqm is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_sqm-scripts=y/# CONFIG_PACKAGE_sqm-scripts is not set/g' configs/rockchip/01-nanopi
# 禁用luci-app-smartdns
sed -i -e 's/CONFIG_PACKAGE_luci-app-smartdns=y/# CONFIG_PACKAGE_luci-app-smartdns is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_smartdns=y/# CONFIG_PACKAGE_smartdns is not set/g' configs/rockchip/01-nanopi
