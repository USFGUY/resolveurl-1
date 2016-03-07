import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "resolveurl.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("resolveurl")

        Image {
            anchors.fill: parent
            source: "images/girl.jpg"

            Component.onCompleted: {
                // This prints 'false'. Although "pics/logo.png" was the input string,
                // it's been converted from a string to a URL, so these two are not the same.
                console.log(source == "images/girl.jpg")

                // This prints 'true' as Qt.resovledUrl() converts the string into a
                // URL with the correctly resolved path
                console.log("resolvedurl: " + Qt.resolvedUrl("images/girl.jpg"))
                console.log(source == Qt.resolvedUrl("images/girl.jpg"))

                // This prints the absolute path, e.g. "file:///path/to/pics/logo.png"
                console.log(source.toString())
            }
        }

    }
}

