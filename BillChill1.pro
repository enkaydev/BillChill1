QT += qml quick
QT += sql
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc
RESOURCES += BillChill
RESOURCES += money.png


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)


