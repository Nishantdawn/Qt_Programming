QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

OpenCvpath = /media/icdu-nishant/ICDU/ImageProcessing/opencv_install_dir #location where opencv is installed
OpenCvlibs = -lopencv_core

unix:!macx: LIBS += -L$$OpenCvpath/lib/ $$OpenCvlibs
INCLUDEPATH += $$OpenCvpath/include/opencv4
DEPENDPATH += $$OpenCvpath/include/opencv4

#IntelIPPpath = /opt/intel/ipp #location where ipp is installed
#IntelIPPlibs = -lippch -lippcore -lippcv -lippdc -lippi -lipps -lippvm -lippcore -lm -lpthread  #libraries

#unix:!macx: LIBS += -L$$IntelIPPpath/lib/intel64_lin/ $$IntelIPPlibs
#INCLUDEPATH += $$IntelIPPpath/include
#DEPENDPATH += $$IntelIPPpath/include


#unix:!macx: LIBS += -L/media/icdu-nishant/ICDU/ImageProcessing/opencv_install_dir/lib/ -lopencv_core

#INCLUDEPATH += /media/icdu-nishant/ICDU/ImageProcessing/opencv_install_dir/include/opencv4
#DEPENDPATH += /media/icdu-nishant/ICDU/ImageProcessing/opencv_install_dir/include/opencv4
