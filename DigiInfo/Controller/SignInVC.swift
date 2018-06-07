//
//  SignInVC.swift
//  DigiInfo
//
//  Created by Apple on 29/05/2018.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var usernameTxt: InsetTextField!
    @IBOutlet weak var emailTxt: InsetTextField!
    @IBOutlet weak var passwordTxt: InsetTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInPressed(_ sender: Any) {
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
