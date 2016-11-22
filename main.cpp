#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSqlDatabase>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    /* Datenbankverbindung zu BillChill.sql (SQLite DB) herstellen */
        QSqlDatabase db;
        db = QSqlDatabase::addDatabase("QSQLITE");
        db.setDatabaseName("/home/billchill/BillChill1/BillChill.sqlite");
        db.open();

    return app.exec();
}
