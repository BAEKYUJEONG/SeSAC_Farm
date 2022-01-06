//
//  SignInViewModel.swift
//  SSAC_14_week
//
//  Created by 백유정 on 2021/12/27.
//

import Foundation

class LoginViewModel {
    
    var email: Observable<String> = Observable("")
    var password: Observable<String> = Observable("")
    
    func postUserLogin(completion: @escaping () -> Void) {
        APIService.login(identifier: email.value, password: password.value) { userData, error in
            print(userData)
            guard let userData = userData else {
                return
            }
            
            UserDefaults.standard.set(userData.jwt, forKey: "token")
            UserDefaults.standard.set(userData.user.username, forKey: "nickname")
            UserDefaults.standard.set(userData.user.id, forKey: "id")
            UserDefaults.standard.set(userData.user.email, forKey: "email")
            
            completion()
        }
    }
    
    func getUseremail() {
        email.value = UserDefaults.standard.string(forKey: "email")!
    }
}
