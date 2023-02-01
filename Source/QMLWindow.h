#pragma once

#include <QWidget>
#include <QHBoxLayout>
#include <QQuickWidget>


class QbWindow : public QWidget
{
	Q_OBJECT

public:
        QbWindow(std::string title, int width, int height,
                const COLORREF& background_color = RGB(0, 0, 0), int x = -1, int y = -1);
    ~QbWindow();

    void add_widget(QUrl qml_source);
	void show();

	Q_INVOKABLE void minimize();
	Q_INVOKABLE void toggle_maximize();
	Q_INVOKABLE void close();

	void setGeometry(int x, int y, int w, int h);
	HWND get_handle(){ return handle; }

protected:
	bool nativeEvent(const QByteArray& eventType, void *message, long *result) override;

private:
    QHBoxLayout *layout = NULL;
    QQuickWidget *qml_widget = NULL;
    HWND handle = NULL;
	bool maximized{false};
};
