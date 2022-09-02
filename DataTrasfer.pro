QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    libusb-1.0.26/libusb/core.c \
    libusb-1.0.26/libusb/descriptor.c \
    libusb-1.0.26/libusb/hotplug.c \
    libusb-1.0.26/libusb/io.c \
    libusb-1.0.26/libusb/os/darwin_usb.c \
    libusb-1.0.26/libusb/os/events_posix.c \
    libusb-1.0.26/libusb/os/events_windows.c \
    libusb-1.0.26/libusb/os/haiku_pollfs.cpp \
    libusb-1.0.26/libusb/os/haiku_usb_backend.cpp \
    libusb-1.0.26/libusb/os/haiku_usb_raw.cpp \
    libusb-1.0.26/libusb/os/linux_netlink.c \
    libusb-1.0.26/libusb/os/linux_udev.c \
    libusb-1.0.26/libusb/os/linux_usbfs.c \
    libusb-1.0.26/libusb/os/netbsd_usb.c \
    libusb-1.0.26/libusb/os/null_usb.c \
    libusb-1.0.26/libusb/os/openbsd_usb.c \
    libusb-1.0.26/libusb/os/sunos_usb.c \
    libusb-1.0.26/libusb/os/threads_posix.c \
    libusb-1.0.26/libusb/os/threads_windows.c \
    libusb-1.0.26/libusb/os/windows_common.c \
    libusb-1.0.26/libusb/os/windows_usbdk.c \
    libusb-1.0.26/libusb/os/windows_winusb.c \
    libusb-1.0.26/libusb/strerror.c \
    libusb-1.0.26/libusb/sync.c \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    libusb-1.0.26/libusb/libusb-1.0.rc \
    libusb-1.0.26/libusb/libusb.h \
    libusb-1.0.26/libusb/libusbi.h \
    libusb-1.0.26/libusb/os/darwin_usb.h \
    libusb-1.0.26/libusb/os/events_posix.h \
    libusb-1.0.26/libusb/os/events_windows.h \
    libusb-1.0.26/libusb/os/haiku_usb.h \
    libusb-1.0.26/libusb/os/haiku_usb_raw.h \
    libusb-1.0.26/libusb/os/linux_usbfs.h \
    libusb-1.0.26/libusb/os/sunos_usb.h \
    libusb-1.0.26/libusb/os/threads_posix.h \
    libusb-1.0.26/libusb/os/threads_windows.h \
    libusb-1.0.26/libusb/os/windows_common.h \
    libusb-1.0.26/libusb/os/windows_usbdk.h \
    libusb-1.0.26/libusb/os/windows_winusb.h \
    libusb-1.0.26/libusb/version.h \
    libusb-1.0.26/libusb/version_nano.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    DataTrasfer_ru_RU.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    libusb-1.0.26/libusb/libusb-1.0.def
