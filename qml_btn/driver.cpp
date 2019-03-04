#include "driver.h"
#include <QDebug>

Driver::Driver(QObject *parent) : QObject(parent)
{

}

void Driver::btn_test()
{
    static bool st=false;
    st= !st;
    qDebug() << "Slot of button in C++, Statue" << st;
    //Do Stuff

    if(st)
        emit currentStatus("Device on");
    else {
        emit currentStatus("Device off");
    }

}
