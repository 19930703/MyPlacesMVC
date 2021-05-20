//
//  PlaceAnnotation.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation
import MapKit

class PlaceAnnotation: NSObject, MKAnnotation
{
    var coordinate: CLLocationCoordinate2D
    var title: String?

    init(_title: String, _coordinate: CLLocationCoordinate2D) {
        coordinate = _coordinate
        title = _title
        super.init()
    }
}
