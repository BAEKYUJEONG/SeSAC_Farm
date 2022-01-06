//
//  User.swift
//  SESAC_Farm
//
//  Created by 백유정 on 2022/01/06.
//

import UIKit

import Foundation

// MARK: - User
struct User: Codable {
    let jwt: String
    let user: UserClass
}

// MARK: - UserClass
struct UserClass: Codable {
    let id: Int
    let username, email: String
}
