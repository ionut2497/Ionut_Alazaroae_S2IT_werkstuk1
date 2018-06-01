//
//  PersonDesc.swift
//  oefening1
//
//  Created by student on 01/06/18.
//  Copyright © 2018 student. All rights reserved.
//


import Foundation
import MapKit

class PersonDesc: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(coordinate: CLLocationCoordinate2D, title:String?, subtitle: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
    }
}
