// [WriteFile Name=Hillshade_Renderer, Category=Layers]
// [Legal]
// Copyright 2016 Esri.

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// [Legal]

import QtQuick 2.6
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import Esri.Samples 1.0
import Esri.ArcGISExtras 1.1

Hillshade_RendererSample {
    id: rootRectangle
    clip: true
    width: 800
    height: 600

    property string dataPath: System.userHomePath + "/ArcGIS/Runtime/Data/raster"
    

    // add a mapView component
    MapView {
        anchors.fill: parent
        objectName: "mapView"
    }

    Button {
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 25
        }
        text: "Edit Renderer"
        onClicked: hillshadeSettings.visible = true;
    }

    HillshadeSettings {
        id: hillshadeSettings
        anchors.fill: parent
    }
}
