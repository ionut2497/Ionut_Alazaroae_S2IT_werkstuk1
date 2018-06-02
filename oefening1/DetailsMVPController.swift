//
//  DetailsMVPController.swift
//  oefening1
//
//  Created by student on 02/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore
import MapKit


class DetailsMVPController: UIViewController ,MKMapViewDelegate{

    var person = Person()
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFirst: UILabel!
    @IBOutlet weak var myLast: UILabel!
    @IBOutlet weak var myPhone: UILabel!
    @IBOutlet weak var myMap: MKMapView!
    
      override func viewDidLoad() {
        super.viewDidLoad()
        let color : UIColor  = UIColor( red: 1, green: 0.0, blue:0, alpha: 1.0 )
        myImage.layer.borderWidth = 1
        myImage.layer.masksToBounds = false
        myImage.layer.borderColor = color.cgColor
        myImage.layer.cornerRadius = myImage.frame.height/2
        myImage.clipsToBounds = true
        self.myImage.image = UIImage(named: person.avatar)
        self.myFirst.text = person.name
        self.myLast.text = person.lastname
        self.myPhone.text = person.phonenum
        
        let loc = CLLocationCoordinate2DMake(person.locationLatitude, person.locationLongitude)
        let span = MKCoordinateSpanMake(0.2, 0.2)
        let region = MKCoordinateRegion(center: loc, span: span)
        
        myMap.setRegion(region, animated: true)
        
        let annotation:PersonDesc = PersonDesc(coordinate: loc, title: person.name, subtitle: person.lastname)
        
        myMap.addAnnotation(annotation)

        
    }
    
    @IBAction func testTap(_ sender: UITapGestureRecognizer) {
        NSLog("Test")
        
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true

    }
    @IBAction func tappedOnImage(_ sender: UITapGestureRecognizer) {
        
       
    }
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }





}

