#include <QApplication>
#include "NativeWindow.hpp"
#include "QMLWindow.hpp"
#include <QQmlEngine>


int main(int argument_count, char *arguments[])
{
    // Initialize the Qt application.
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication application(argument_count, arguments);

    CoInitialize(NULL);

    // Create the window.
    COLORREF bg_color = RGB(0x44, 0x44, 0x44);

    QbWindow window("Example", 1280, 720, bg_color);

    // Set the native window's properties.
    Native_Window::set_grab_area(30, 0, 150);

    // Register the window with QML.
    qmlRegisterSingletonInstance("Laventh.Window", 1, 0, "Win", &window);

    // Add the QML widget to the window and show the window.
    window.add_widget(QUrl(QStringLiteral("qrc:/Main.qml")));
    window.show();

    return application.exec();
}
