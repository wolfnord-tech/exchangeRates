TARGET = pro.wolfnord.Exchange_rate

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    rpm/pro.wolfnord.Exchange_rate.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/pro.wolfnord.Exchange_rate.ts \
    translations/pro.wolfnord.Exchange_rate-ru.ts \
