#ifndef GAMEBOARDMODEL_H
#define GAMEBOARDMODEL_H
#include <QAbstractListModel>
#include <vector>
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

protected:
    QHash<int, QByteArray> roleNames() const override;
private:
    std::vector<QColor> colors;
    std::vector<int> numbers;
};

#endif // GAMEBOARDMODEL_H
