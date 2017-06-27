#include "gameboardmodel.h"
#include <QDebug>

GameboardModel::GameboardModel()
    :QAbstractListModel(nullptr)
{
    float currentHue = 0.0;
    for (int i = 0; i < 3; ++i) {
        colors.push_back(QColor::fromHslF(currentHue, 1.0, 0.5) );
        currentHue += 0.618033988749895f;
        currentHue = std::fmod(currentHue, 1.0f);
        numbers.push_back(2);
    }
}

int GameboardModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    qDebug () << "Size: " << colors.size();
    return colors.size();
}

QVariant GameboardModel::data(const QModelIndex &index, int role) const
{
    qDebug () << "Data called, index: " << index << " Role: " << role;
    if (!index.isValid() || index.row() >= (int)colors.size()) {
        return QVariant();
    }

    if (role == ColorRole) {
        return colors[index.row()];
    }
    else if (role == NumberRole) {
        return numbers[index.row()];
    }
    else {
        return QVariant();
    }
}

QHash<int, QByteArray> GameboardModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ColorRole] = "gbColor";
    roles[NumberRole] = "gbNumber";
    return roles;
}
