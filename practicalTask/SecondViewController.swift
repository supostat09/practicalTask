//
//  SecondViewController.swift
//  practicalTask
//
//  Created by Абдулла-Бек on 20/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var uesernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var isPasswordHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let uesername = uesernameTextField.text, !uesername.isEmpty,
              let email = emailTextField.text, !email.isEmpty,
              let mobileNumber = mobileNumberTextField.text, !mobileNumber.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            uesernameTextField.layer.borderColor = UIColor.red.cgColor
            uesernameTextField.layer.borderWidth = 2
            uesernameTextField.placeholder = "Заполните, пожалуйста"
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 2
            emailTextField.placeholder = "Заполните, пожалуйста"
            mobileNumberTextField.layer.borderColor = UIColor.red.cgColor
            mobileNumberTextField.layer.borderWidth = 2
            mobileNumberTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ThirdViewController else {return}
        vc.emailText = emailTextField.text ?? ""
    }
    
    @IBAction func togglePasswordVisibility(_ sender: Any) {
        isPasswordHidden.toggle()
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
}
