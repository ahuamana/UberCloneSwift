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
        super.init( )
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // This is for
        locationManager.requestWhenInUseAuthorization( ) // This is for requesting the permission
        locationManager.startUpdatingLocation( )
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard !locations.isEmpty else { return }
        
        locationManager.stopUpdatingLocation()
        
    }
}

