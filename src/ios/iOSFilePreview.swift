import Foundation

 @objc(CDViOSFilePreview) class iOSFilePreview : CDVPlugin, UIDocumentInteractionControllerDelegate {
    @objc(open:)
    func open(command: CDVInvokedUrlCommand) {
        // run on the background thread
            // force type casting of AnyObject
            var file = command.arguments[0] as! String
            var type = command.arguments[1] as! String
            var result: CDVPluginResult?

            DispatchQueue.global(qos: .background).async {

            // Background Thread

            DispatchQueue.main.async {
            // Run UI Updates
            // using print; faster then NSLog
            print("Looking for \(file) in ")

            let documentURL = URL(string: file)
            let documentController = UIDocumentInteractionController(url: documentURL!)
            documentController.delegate = self

            let wasOpen = documentController.presentPreview(animated: true)

            if (wasOpen) {
                result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: ["type": "done", "data": "true"])
            } else {
                result = CDVPluginResult(status: CDVCommandStatus_ERROR, messageAs: ["type": "done", "data": "true"])
            }

            self.commandDelegate?.send(result, callbackId: command.callbackId)
            }
            }





    }

    func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController {
        return self.viewController!
    }

}
