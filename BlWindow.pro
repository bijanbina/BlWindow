QT += quick widgets quickwidgets qml

SOURCES += \
        NativeWindow.cpp \
        QMLWindow.cpp \
        main.cpp

RESOURCES += qml.qrc \
    Resources/fonts.qrc

win32:LIBS += -lgdi32 \
              -lKernel32 \
              -lUser32 \
              -lole32 \
              -luuid \
              -loleaut32 \
              -lDwmapi \
              -loleacc \
              -lPsapi
# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    NativeWindow.h \
    QMLWindow.h
