//
//  ViewController.swift
//  SESAC_Farm
//
//  Created by 백유정 on 2022/01/05.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = LoginViewModel()

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        signUpButton.addTarget(self, action: #selector(signUputtonButtonClicked), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonButtonClicked), for: .touchUpInside)
    }

    func setup() {
        logoImage.image = UIImage(named: "logo.png")
        titleLabel.text = "당신 근처의 새싹 농장"
        subtitleLabel.text = "iOS 지식부터 바람의 나라까지\n지금 SeSAC에서 함께해보세요!"
        signUpButton.tintColor = UIColor(named: "Color")
    }
    
    @objc func signUputtonButtonClicked() {
        let sb = UIStoryboard(name: "SignUp", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: SignUpViewController.identifier) as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func loginButtonButtonClicked() {
        let sb = UIStoryboard(name: "Login", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: LoginViewController.identifier) as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}

