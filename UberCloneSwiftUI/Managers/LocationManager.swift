//
//  LocationManager.swift
//  UberCloneSwiftUI
//
//  Created by Antony Huaman Alikhan on 22/12/25.
//

import CoreLocation

class LocationManager : NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init(){
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // This is for
        locationManager.requestWhenInUseAuthorization( ) // This is for requesting the permission
        locationManager.startUpdatingLocation( )
    }
}

