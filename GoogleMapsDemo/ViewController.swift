//
//  ViewController.swift
//  GoogleMapsDemo
//
//  Created by Alex Nagy on 16.11.2020.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager!
    
    // Step 2.
//    var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Step 3.
//        print(GMSServices.openSourceLicenseInfo())

        // Initialize the location manager.
        // Step 4.
//        GoogleMapsHelper.initLocationManager(locationManager, delegate: self)

        // Create a map.
        // Step 5.
//        GoogleMapsHelper.createMap(on: view, locationManager: locationManager, mapView: mapView)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Step 6.
//        mapView.clear()
    }
    
}

// Delegates to handle events for the location manager.
extension ViewController: CLLocationManagerDelegate {
    
    // Handle incoming location events.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Step 7.
//        GoogleMapsHelper.didUpdateLocations(locations, locationManager: locationManager, mapView: mapView)
    }
    
    // Handle authorization for the location manager.
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // Step 8.
//        GoogleMapsHelper.handle(manager, didChangeAuthorization: status)
    }
    
    // Handle location manager errors.
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationManager.stopUpdatingLocation()
        print("Error: \(error)")
    }
}


