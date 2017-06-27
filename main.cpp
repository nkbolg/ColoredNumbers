#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "gameboardmodel.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    GameboardModel model;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("gameBoardModel", &model);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    return app.exec();
}
