import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

import org.kde.kirigami 2.7 as Kirigami
import org.mauikit.controls 1.2 as Maui
import org.maui.cask 1.0 as Cask
import Qt.labs.calendar 1.0

Cask.PanelItem
{
    id: control
//    icon.name: "clock"
    font.bold: true
    text: Qt.formatDateTime(new Date(), "hh:mm")


    card: Cask.PanelCard
    {
        id: _card
        width: ListView.view.width
//        padding: 0
        //        title: new Date().toDateString()
        //        headBar.visible: true

        ColumnLayout
        {
            width: parent.width
            height: 220
            spacing: Maui.Style.space.medium

            Maui.ListItemTemplate
            {
                Layout.fillWidth: true
                label1.text: Qt.formatDateTime(new Date(), "hh:mm")
                label1.font.bold: true
                label1.font.weight: Font.Black
                label1.font.pointSize: Maui.Style.fontSizes.big
                label2.text: Qt.formatDate(new Date(), "ddd MMMM yyyy")

                ToolButton
                {
                    icon.name: "go-next"
                }
            }

            MonthGrid
            {
                id: _monthGrid
                Layout.fillWidth: true
                Layout.fillHeight: true

                month: new Date().getMonth()
                year: new Date().getFullYear()
                locale: Qt.locale("en_US")
                delegate: Label
                {
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    opacity: model.month === _monthGrid.month ? 1 : 0
                    text: model.day
                    font: _monthGrid.font
                    color: model.today ?  Kirigami.Theme.highlightColor : Kirigami.Theme.textColor
                }
            }
        }

    }

    Timer {
        interval: 1000; running: true; repeat: true
        onTriggered: control.text = Qt.formatDateTime(new Date(), "hh:mm")

    }
}