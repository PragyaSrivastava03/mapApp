//
//  ViewController.swift
//  mapApp
//
//  Created by Scholar on 6/28/22.
//

import UIKit
import MapKit
class ViewController: UIViewController , MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        // Do any additional setup after loading the view.
        
        //set the initial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 40.759011, longitude: -73.984472)
        // add a map pin
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil )
        
        //let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        
        //label map pin
        let sourceAnnotation = MKPointAnnotation()
        sourceAnnotation.title = "Times Square"
        
        if let location = sourcePlacemark.location{
            sourceAnnotation.coordinate = location.coordinate
        }
        // show region of choice
        self.mapView.showAnnotations([sourceAnnotation] , animated: true)
        
        
        
        
    }


}

