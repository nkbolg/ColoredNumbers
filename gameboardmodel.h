#ifndef GAMEBOARDMODEL_H
#define GAMEBOARDMODEL_H
#include <QAbstractListModel>
#include <array>
#include <QColor>

class GameboardModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum DataRoles {
        ColorRole = Qt::UserRole + 1,
        NumberRole
    };

    GameboardModel();

    int rowCount(const QModelIndex &parent) const override;

    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const override;

    Q_INVOKABLE void onButtonClicked(int idx);

protected:
    QHash<int, QByteArray> roleNames() const override;
private:
    static constexpr int sz = 10;
    std::array<std::array<QColor, sz>, sz> colors;
    std::array<std::array<int, sz>, sz> numbers;
};

#endif // GAMEBOARDMODEL_H
