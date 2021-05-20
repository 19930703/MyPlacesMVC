//
//  LoginResponse.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation

struct LoginResponse : Decodable {
    let errorMessage: String?
    let data: User?
}

struct User: Decodable {
    let userName: String?
    let userId: Int?
    let email: String?
}
