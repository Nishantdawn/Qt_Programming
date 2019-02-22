#include <QCoreApplication>
#include <QDebug>
#include <opencv2/opencv.hpp>
#include "ipp.h"
const IppLibraryVersion *lib;
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
     qDebug() <<  "OpenCV Version: "<< CV_VERSION ;
     lib = ippGetLibVersion();
     qDebug() <<  "IPP Version: " <<lib->Name << lib->Version;
    return a.exec();
}
