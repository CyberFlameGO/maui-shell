/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt-project.org/legal
**
** This file is free software; you can redistribute it and/or
** modify it under the terms of the GNU Lesser General Public
** License version 3 as published by the Free Software Foundation
** and appearing in the file LICENSE included in the packaging
** of this file.
**
** This code is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
** GNU Lesser General Public License for more details.
**
****************************************************************************/

import QtQuick 2.15
import QtQml 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.3
import QtGraphicalEffects 1.0
import QtWayland.Compositor 1.0
import QtQuick.Layouts 1.3
import org.kde.mauikit 1.2 as Maui
import org.kde.kirigami 2.8 as Kirigami
import org.cask.env 1.0 as Env
import "shell"
import "shell/statusbar"
import "shell/tasksbar"
import "." as S

WaylandOutput
{
    id: output
    property alias surfaceArea: _cask.surface // Chrome instances are parented to compositorArea
    property alias targetScreen: win.screen
    property alias cask: _cask
    property alias swipeView : _swipeView

    property bool showDesktop : true
    sizeFollowsWindow: true
    availableGeometry : Qt.rect(surfaceArea.x, surfaceArea.y, surfaceArea.width, surfaceArea.height)
    scaleFactor: 1
    //transform: WaylandOutput.Transform180
    readonly property bool isMobile : win.width < 500
    property bool overView: false
    readonly property alias formFactor : win.formFactor


    window: Maui.ApplicationWindow
    {
        id: win
        visibility: Window.Windowed
        Maui.App.enableCSD: true
        color: "transparent"
        title: formFactor
        headBar.visible: false
        isWide: width > 1000

        readonly property int formFactor :  {
            if(width > 1500)
                return Env.Env.Desktop
            else if(width > 500)
                return Env.Env.Tablet
            else
                return Env.Env.Phone
        }


        WaylandMouseTracker
        {
            id: mouseTracker
            objectName: "wmt on " + Screen.name
            anchors.fill: parent
            windowSystemCursorEnabled: false

            Cask
            {
                id: _cask
                anchors.fill: parent
                anchors.bottomMargin: _swiper.height
                backgroundImage: "qrc:/calamares_wallpaper.jpg"
                bottomPanel.children: win.isWide ? [_taskBar, _statusBar] :  [_taskBar]
                topPanel.children: win.isWide ? [] :  [statusBar]
                bottomPanel.visible: win.formFactor === Env.Env.Phone ? showDesktop || _listSurfaces.count <= 0 : true

                readonly property QtObject statusBar : StatusBar {id: _statusBar}
                readonly property QtObject taskManagerBar: TaskBar {id: _taskBar}

                Rectangle
                {
                    color: "orange"
                    height: 64
                    width: 100
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: height

                    radius: Maui.Style.radiusV

                    Label
                    {
                        color: "#333"
                        width: parent.width
                        horizontalAlignment: Qt.AlignHCenter
                        font.bold: true
                        font.pointSize: Maui.Style.fontSizes.big
                        font.weight: Font.Bold
                        anchors.centerIn: parent
                        text:  switch(win.formFactor)
                               {
                               case Env.Env.Desktop : "Desktop \n" + win.width +" x " + win.height ; break;
                               case Env.Env.Tablet : "Tablet \n" + win.width +" x " + win.height; break;
                               case Env.Env.Phone : "Phone \n" + win.width +" x " + win.height; break;
                               }
                    }
                }

                ListView
                {
                    id: _swipeView
                    anchors.fill: parent
                    visible: !showDesktop

                    Binding on currentIndex
                    {
                        delayed: true
                        value:  _appsOverview.currentIndex
                        restoreMode: Binding.RestoreBinding
                    }

                    onCurrentIndexChanged:
                    {
                        _swipeView.lastPos = _swipeView.contentX
                    }

                    orientation: ListView.Horizontal
                    interactive: false
                    snapMode: ListView.SnapOneItem
                    boundsBehavior: Flickable.StopAtBounds

                    highlightFollowsCurrentItem: true
                    highlightMoveDuration: 0
                    highlightResizeDuration: 0

                    //                    preferredHighlightEnd: width
                    // 		highlight: Item {}
                    highlightMoveVelocity: -1
                    highlightResizeVelocity: -1


                    property int lastPos: 0

                    Binding on contentX
                    {
                        when: overviewHandler.active
                        delayed: true
                        value: _swipeView.lastPos + ((overviewHandler.centroid.position.x - overviewHandler.centroid.pressPosition.x) * -1)
                        restoreMode: Binding.RestoreBinding
                    }

                    model: _listSurfaces
                    delegate: Item
                    {

                        height: _swipeView.height
                        width: _swipeView.width
                        clip: true

                        Chrome
                        {
                            id: _chromeDelegate
                            shellSurface: modelData
                            moveItem: Item
                            {
                                property bool moving: false
                                parent: surfaceArea
                                x: output.position.x
                                y: output.position.y
                                height: _chromeDelegate.shellSurface.surface.height
                                width: _chromeDelegate.shellSurface.surface.width
                            }


                        }
                    }

                }
            }

            Rectangle
            {
                id: _swiper
                height: Maui.Style.rowHeightAlt
                opacity: 0.3
                width: parent.width
                color: "#333"
                anchors.bottom: parent.bottom

                Kirigami.Separator
                {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                }

                HoverHandler
                {
                    id: _hadleHandler
                    cursorShape: Qt.OpenHandCursor
                }

                Rectangle
                {
                    x: ((parent.width/2) - width/2) - ((overviewHandler.centroid.position.x - overviewHandler.centroid.pressPosition.x) * -1)
                    anchors.verticalCenter: parent.verticalCenter
                    height: parent.height - 12
                    width: Math.min(100, parent.width * 0.5)
                    color: _hadleHandler.hovered ? Kirigami.Theme.highlightColor : "white"
                    radius: 4
                }

                Label
                {
                    text: _swipeView.lastPos + " / " + _swipeView.contentX + " / " + _swipeView.currentIndex
                }

                DragHandler
                {
                    id: overviewHandler
                    target: null
                    onActiveChanged:
                    {
                        if(!active)
                        {
                            _swipeView.contentX += (overviewHandler.centroid.position.x - overviewHandler.centroid.pressPosition.x) * -1
                            _swipeView.returnToBounds()
                            _swipeView.currentIndex = _swipeView.indexAt(_swipeView.contentX, 0)

                            overView = Math.abs(overviewHandler.centroid.position.y) > 100 && _appsOverview.count > 0
                        }
                    }
                }
            }

            AppsOverview
            {
                id: _appsOverview
                anchors.fill: parent
            }

            WaylandCursorItem
            {
                id: cursor
                x: mouseTracker.mouseX
                y: mouseTracker.mouseY
                seat: output.compositor.defaultSeat
                visible: mouseTracker.containsMouse
            }
        }
    }
}
