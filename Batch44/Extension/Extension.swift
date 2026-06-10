//
//  Extension.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 5/27/26.
//

import UIKit

extension UIViewController {
    /// This method will show an alert
    /// title - will be title for an alert
    /// message - description about an alert
    func showAlert(title: String, message: String) {
        let objAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        objAlert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: { action in
            print("ok button pressed!")
        }))
        self.present(objAlert, animated: true)
    }
}

extension String {
    func totalLength() -> Int {
        return self.count
    }
}


extension UIColor {
    
}
