#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    socket = new QUdpSocket(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    QByteArray Data;

    Data.append(ui->lineEdit->text());
    // socket->writeDatagram(Data, QHostAddress::Broadcast, 1234 );
     socket->writeDatagram(Data, QHostAddress("192.168.20.20"), 1234 );
}
