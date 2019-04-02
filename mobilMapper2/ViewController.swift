//
//  ViewController.swift
//  mobilMapper2
//
//  Created by Alan Tokarsky 2019 on 4/1/19.
//  Copyright © 2019 Alan Tokarsky 2019. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    let locationManager  = CLLocationManager()
    var currentLocation : CLLocation!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
        print(currentLocation)
    }

}

