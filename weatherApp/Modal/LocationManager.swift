//
//  LocationManager.swift
//  weatherApp
//
//  Created by VB on 25.06.2022.
//

import Foundation
import CoreLocation

class Locations : NSObject, ObservableObject, CLLocationManagerDelegate{
    let manager = CLLocationManager()
    @Published var location : CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    func locationReqirument(){
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error", error)
        isLoading = false
    }
}
