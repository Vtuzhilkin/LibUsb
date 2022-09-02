#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "libusb-1.0.26/libusb/libusb.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_pushButton_clicked()
{
    static libusb_context *context = NULL;
    libusb_device **list = NULL;
    libusb_init(&context);
    int count = libusb_get_device_list(context, &list);
}

