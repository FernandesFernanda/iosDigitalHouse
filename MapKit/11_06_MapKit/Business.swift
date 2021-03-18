//
//  Business.swift
//  11_06_MapKit
//
//  Created by Fernanda Fernandes on 06/11/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import Foundation
import MapKit

class Business: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var category: String?

    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?, category: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.category = category
        
        super.init()
    }
    
}
