#!/bin/bash
set -e
./scripts/feeds update -a
./scripts/feeds install -a
echo Remove Support for PPPOA
rm ./feeds/luci/protocols/luci-proto-ppp/luasrc/model/cbi/admin_network/proto_pppoa.lua
echo Remove Support for DIR-825 and AllNet Devices
rm ./target/linux/ar71xx/base-files/lib/upgrade/dir825.sh
rm ./target/linux/ar71xx/base-files/lib/upgrade/allnet.sh
echo Patching files...
for i in $( ls patch ); do
    echo Applying patch $i
    patch -p1 < patch/$i
done

make defconfig
rm .config
make defconfig
