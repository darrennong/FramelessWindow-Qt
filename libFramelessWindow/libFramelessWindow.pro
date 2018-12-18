TEMPLATE = lib

CONFIG += FramelessWindow-buildlib

include(libFramelessWindow.pri)

TARGET = $$LIBFRAMELESSWINDOW_NAME

DESTDIR = $$PROJECT_LIBDIR

win32{
    DLLDESTDIR = $$PROJECT_BINDIR
    QMAKE_DISTCLEAN += $$PROJECT_BINDIR/$${LIBFRAMELESSWINDOW_NAME}.dll
}

CONFIG += debug_and_release build_all

# 宏定义
DEFINES += FRAMELESSWINDOW_LIBRARY HAVE_WINDOW_AERO

SOURCES += \
    MuShadowWindow.cpp




