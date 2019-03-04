#ifndef DRIVER_H
#define DRIVER_H

#include <QObject>

class Driver : public QObject
{
    Q_OBJECT
public:
    explicit Driver(QObject *parent = nullptr);
    Q_INVOKABLE void btn_test();

signals:
void currentStatus(QString Dev_St);

public slots:
};

#endif // DRIVER_H
