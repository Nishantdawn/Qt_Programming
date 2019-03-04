#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QObject>
#include <QUdpSocket>
#include <QHostAddress>
namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
public slots:
    void readyRead();
private slots:
    void on_pushButton_clicked();

private:
    Ui::MainWindow *ui;
     QUdpSocket *socket;
};

#endif // MAINWINDOW_H
