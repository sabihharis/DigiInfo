//
//  LoginVC.swift
//  DigiInfo
//
//  Created by Apple on 28/05/2018.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

  

}
