//
//  LoginRequest.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation

struct LoginRequest : Encodable {
    let userEmail, userPassword: String
}
