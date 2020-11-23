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
    var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(GMSServices.openSourceLicenseInfo())

        // Initialize the location manager.
        GoogleMapsHelper.initLocationManager(locationManager, delegate: self)

        // Create a map.
        GoogleMapsHelper.createMap(on: view, locationManager: locationManager, mapView: mapView)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mapView.clear()
    }
    
}

// Delegates to handle events for the location manager.
extension ViewController: CLLocationManagerDelegate {
    
    // Handle incoming location events.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        GoogleMapsHelper.didUpdateLocations(locations, locationManager: locationManager, mapView: mapView)
    }
    
    // Handle authorization for the location manager.
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        GoogleMapsHelper.handle(manager, didChangeAuthorization: status)
    }
    
    // Handle location manager errors.
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationManager.stopUpdatingLocation()
        print("Error: \(error)")
    }
}


