//
//  APIService.swift
//  SESAC_Farm
//
//  Created by 백유정 on 2022/01/06.
//

import UIKit

enum APIError: Error {
    case invalidResponse
    case noData
    case failed
    case invalidData
}

class APIService {
    
    static func login(identifier: String, password: String, completion: @escaping (User?, APIError?) -> Void) {
        
        var request = URLRequest(url: EndPoint.login.url)
        request.httpMethod = Method.POST.rawValue
        // string -> data, dictionary -> JSONSerialization / Codable
        request.httpBody = "identifier=\(identifier)&password=\(password)".data(using: .utf8, allowLossyConversion: false)
        
        URLSession.request(.shared, endpoint: request, completion: completion)
    }
}
