//
//  ViewController.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 5/19/26.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: Property
    
    var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
    
    var userNameTF: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Enter user name"
        textField.textColor = .black
        return textField
    }()
    
    // MARK: View Life cycle methods
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
}

// MARK: - Setup UI

extension LoginVC {
    func setUpUI() {
        // add username
        view.addSubview(userNameTF)
        NSLayoutConstraint.activate([
            userNameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTF.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            userNameTF.widthAnchor.constraint(equalToConstant: 150),
            userNameTF.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        // add into the view
        view.addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 60),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 150),
            loginButton.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}


