//
//  ThirdViewController.swift
//  practicalTask
//
//  Created by Абдулла-Бек on 20/3/23.
//

import UIKit

class ThirdViewController: UIViewController {

    var emailText: String?
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.text = emailText ?? ""
        // Do any additional setup after loading the view.
    }
    


}
