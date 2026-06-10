//
//  SignupViewController.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 5/22/26.
//

import UIKit

class SignupViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signupAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

