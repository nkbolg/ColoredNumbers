#include "gameboardmodel.h"
#include <QDebug>

GameboardModel::GameboardModel()
    :QAbstractListModel(nullptr)
{
    float currentHue = 0.0;
    for (int i = 0; i < sz; ++i) {
        for (int j = 0; j < sz; ++j) {
            colors[i][j] = QColor::fromHslF(currentHue, 1.0, 0.5);
            currentHue += 0.618033988749895f;
            currentHue = std::fmod(currentHue, 1.0f);
            numbers[i][j] = i*10+j;
        }
    }
}

int GameboardModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
//    qDebug () << "Size: " << colors.size();
    return colors.size()*colors.size();
}

QVariant GameboardModel::data(const QModelIndex &index, int role) const
{
    int idx = index.row();
    int x = idx % sz;
    int y = idx / sz;
//    qDebug () << "Data called, index: " << index << " Role: " << role;
    if (!index.isValid() || x >= (int)colors.size()
                         || y >= (int)colors.size()) {
        return QVariant();
    }

    if (role == ColorRole) {
        return colors[y][x];
    }
    else if (role == NumberRole) {
        return numbers[y][x];
    }
    else {
        return QVariant();
    }
}

void GameboardModel::onButtonClicked(int idx)
{
    qDebug () << idx;
    int x = idx % sz;
    int y = idx / sz;
    colors[y][x] = QColor("cyan");
    emit dataChanged(createIndex(idx, 0),createIndex(idx, 0));
//    btn->setProperty("number", 1);
}

QHash<int, QByteArray> GameboardModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[ColorRole] = "gbColor";
    roles[NumberRole] = "gbNumber";
    return roles;
}
