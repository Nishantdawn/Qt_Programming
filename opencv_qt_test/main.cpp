#include <QCoreApplication>
#include <QDebug>
#include <opencv2/opencv.hpp>
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() <<  "OpenCV Version: "<< CV_VERSION ;
    return a.exec();
}
