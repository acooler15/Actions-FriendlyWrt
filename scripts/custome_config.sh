#!/bin/bash

sed -i -e '/CONFIG_MAKE_TOOLCHAIN=y/d' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_IB=y/# CONFIG_IB is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_SDK=y/# CONFIG_SDK is not set/g' configs/rockchip/01-nanopi
sed -i -e 's/CONFIG_PACKAGE_dockerd=y/# CONFIG_PACKAGE_dockerd is not set/g' configs/rockchip-docker/06-docker
sed -i -e 's/CONFIG_PACKAGE_docker-compose=y/# CONFIG_PACKAGE_docker-compose is not set/g' configs/rockchip-docker/06-docker
sed -i -e 's/CONFIG_PACKAGE_luci-app-dockerman=y/# CONFIG_PACKAGE_luci-app-dockerman is not set/g' configs/rockchip-docker/06-docker
