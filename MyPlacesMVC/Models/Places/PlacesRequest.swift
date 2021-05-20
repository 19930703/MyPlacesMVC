//
//  PlacesRequest.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation
struct PlacesRequest : Encodable
{
    let radius: Double
    let type: String
    let key: String
    let location: String
}
