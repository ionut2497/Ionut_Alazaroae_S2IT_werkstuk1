//
//  SecondViewController.swift
//  oefening1
//
//  Created by student on 01/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class LocationMVPController: UIViewController , CLLocationManagerDelegate {
    //Mijn map
    @IBOutlet weak var myMap: MKMapView!
    var persons = PersonData.instance.getPersons();
    
    let manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //we zetten wezelf als delegate
        manager.delegate = self
        //beste accuracy op de map
        manager.desiredAccuracy = kCLLocationAccuracyBest
        //vraag voor auth
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span :MKCoordinateSpan = MKCoordinateSpanMake(0.01,0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region : MKCoordinateRegion = MKCoordinateRegionMake(myLocation,span)
        
        myMap.setRegion(region, animated: true)
        
        self.myMap.showsUserLocation = true;
        
        for person in persons {
            let location = CLLocationCoordinate2DMake(person.locationLatitude,person.locationLongitude)
            //let cord : CLLocationCoordinate2D = location
            //let annot : MKAnnotation = MKAnnotation(coordination:cord ,title:"test", subtitle:"tes")
            let test :PersonDesc = PersonDesc(coordinate: location, title: person.name, subtitle: person.lastname)
            myMap.addAnnotation(test)
            
            
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

