//
//  Common.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation
struct SegueIdentifier{
    static let placesMapView = "showMapView"
}

struct API {
    static let key: String = "YOUR_GOOGLE_PLACES_APP_TOKEN_HERE"
    static let login: String = "https://api-dev-scus-demo.azurewebsites.net/api/User/Login"
    static let places: String = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
}
