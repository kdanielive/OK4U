//
//  NightwalkViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 1/6/20.
//  Copyright © 2020 Daniel Kim. All rights reserved.
//

import UIKit
import CallKit
import Mapbox
import MapboxCoreNavigation
import MapboxNavigation
import MapboxDirections


class NightwalkViewController: UIViewController, MGLMapViewDelegate {
    
    @IBOutlet var navigationFrame: MGLMapView!
    var mapView: NavigationMapView!
    var directionsRoute: Route?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView = NavigationMapView(frame: navigationFrame.bounds)
         
        navigationFrame.addSubview(mapView)
         
        // Set the map view's delegate
        mapView.delegate = self
        
        // Allow the map to display the user's location
        mapView.showsUserLocation = true
        mapView.setUserTrackingMode(.follow, animated: true, completionHandler: nil)

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
