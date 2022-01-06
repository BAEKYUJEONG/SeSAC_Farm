//
//  SignUpViewController.swift
//  SESAC_Farm
//
//  Created by 백유정 on 2022/01/06.
//

import UIKit

class SignUpViewController: UIViewController {

    static let identifier = "SignUpViewController"
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "새싹농장 가입하기"
        
        setup()

    }
    
    func setup() {
        signUpButton.tintColor = UIColor(named: "Color")
    }
}
