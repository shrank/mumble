include(../compiler.pri)

VERSION		= 1.1.7
DIST		= mumble.pro murmur.pro mumble.pri mumble.ico Message.h mumble_plugin.h PacketDataStream.h CryptState.h Timer.h Version.h OSInfo.h
CONFIG		+= qt thread debug_and_release warn_on
DEFINES		*= MUMBLE_VERSION_STRING=$$VERSION

INCLUDEPATH	+= $$PWD

CONFIG(debug, debug|release) {
  CONFIG += console
  LIBPATH	+= ../../debug
  DESTDIR	= ../../debug
}

CONFIG(release, debug|release) {
  LIBPATH	+= ../../release
  DESTDIR	= ../../release
}
