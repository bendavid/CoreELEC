# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)
# Copyright (C) 2020-present Team CoreELEC (https://coreelec.org)

PKG_NAME="driverselect"
PKG_VERSION="6a5dc7385b19428eddba93bc051f3b829cfd994b"
PKG_SHA256="36d2c98cd253f2a80d76c88d13dd8002a4f9f4027aa9f7ad345ab19e8745d488"
PKG_REV="100"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="https://libreelec.tv"
PKG_URL="https://github.com/CoreELEC/script.program.driverselect/archive/${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_SECTION="script.program"
PKG_SHORTDESC="script.program.driverselect"
PKG_LONGDESC="script.program.driverselect"
PKG_TOOLCHAIN="manual"

PKG_IS_ADDON="embedded"
PKG_ADDON_NAME="Driver Select"
PKG_ADDON_TYPE="xbmc.python.script"

unpack() {
  mkdir -p ${PKG_BUILD}/addon
  tar --strip-components=1 -xf ${SOURCES}/${PKG_NAME}/${PKG_NAME}-${PKG_VERSION}.tar.gz -C ${PKG_BUILD}/addon
}

make_target() {
  :
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/share/kodi/addons/${PKG_SECTION}.${PKG_NAME}
  cp -rP ${PKG_BUILD}/addon/* ${INSTALL}/usr/share/kodi/addons/${PKG_SECTION}.${PKG_NAME}
}
