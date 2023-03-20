//
//  ViewController.swift
//  practicalTask
//
//  Created by Абдулла-Бек on 19/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var isPasswordHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: UIButton) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.layer.borderWidth = 2
            emailTextField.placeholder = "Заполните, пожалуйста"
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.layer.borderWidth = 2
            passwordTextField.placeholder = "Заполните, пожалуйста"
            return
        }
    }
    
    @IBAction func togglePasswordVisibility(_ sender: Any) {
        isPasswordHidden.toggle()
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
    
    @IBAction func createNowButton(_ sender: UIButton) {
        let vc: SecondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

