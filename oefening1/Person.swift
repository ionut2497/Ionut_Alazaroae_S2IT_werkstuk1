//
//  Person.swift
//  oefening1
//
//  Created by student on 01/06/18.
//  Copyright © 2018 student. All rights reserved.
//
import Foundation
import UIKit

class Person {
    
    var lastname : String
    var name : String
    var avatar : String
    var street : String
    var number : String
    var zip : String
    var city : String
    var phonenum : String
    var locationLongitude : Double
    var locationLatitude : Double
    
    
    init(){
        lastname = ""
        name = ""
        avatar = ""
        street = ""
        number = ""
        zip = ""
        city = ""
        locationLongitude = 0.0
        locationLatitude =  0.0
        phonenum = ""
        
    }
    
    init( lastname : String,name : String, avatar : String,street : String,number : String,zip : String,city : String, locationLongitude : Double, locationLatitude : Double, phonenum : String){
        self.lastname = lastname
        self.name = name
        self.avatar = avatar
        self.street = street
        self.number = number
        self.zip = zip
        self.city  = city
        self.phonenum = phonenum
        self.locationLongitude = locationLongitude
        self.locationLatitude = locationLatitude
        
    }
    
    
    
}
