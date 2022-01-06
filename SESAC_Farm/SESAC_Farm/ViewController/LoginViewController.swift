//
//  LoginViewController.swift
//  SESAC_Farm
//
//  Created by 백유정 on 2022/01/06.
//

import UIKit

class LoginViewController: UIViewController {

    static let identifier = "LoginViewController"
    let viewModel = LoginViewModel()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "새싹농장 로그인"
        
        setup()
        
        viewModel.email.bind { text in
            self.emailTextField.text = text
        }
        
        viewModel.password.bind { text in
            self.passwordTextField.text = text
        }
        
        emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(passwordTextFieldDidChange(_:)), for: .editingChanged)
        
        loginButton.addTarget(self, action: #selector(signInButtonClicked), for: .touchUpInside)
        
    }
    
    func setup() {
        loginButton.tintColor = UIColor(named: "Color")
    }
    
    @objc func emailTextFieldDidChange(_ textfield: UITextField) {
        viewModel.email.value = textfield.text ?? ""
    }
    
    @objc func passwordTextFieldDidChange(_ textfield: UITextField) {
        viewModel.password.value = textfield.text ?? ""
    }
    
    @objc func signInButtonClicked() {
        
        viewModel.postUserLogin {
            DispatchQueue.main.async {
                let sb = UIStoryboard(name: "Board", bundle: nil)
                let vc = sb.instantiateViewController(withIdentifier: BoardViewController.identifier) as! BoardViewController
                let sd = UIApplication.shared.delegate as! SceneDelegate
                sd.window?.rootViewController = vc
            }
        }
    }

}
