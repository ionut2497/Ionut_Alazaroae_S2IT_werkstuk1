//
//  PersonData.swift
//  oefening1
//
//  Created by student on 01/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import MapKit

final class PersonData{
    
    static let instance = PersonData()
    //We maken daarvan een soort "singleton" anders gaat die niet toegangbaar zijn door beide tabs
    var persons = [Person]()
    
    
    init(){
        self.persons = [
            Person.init(lastname: "Bryant", name: "Kobe", avatar: "kobe", street: "lakerstreet", number: "24", zip: "1080" , city: "Los Angeles", locationLongitude: -118.243683, locationLatitude: 34.052235, phonenum: "444-4534-233"),
            Person.init(lastname: "James", name: "Lebron", avatar: "lebron", street: "traitorstreet", number: "10", zip: "1000", city: "Cleveland", locationLongitude: -81.681290, locationLatitude: 41.505493, phonenum: "555-1234-343")
        
        ]
    }
    
    public func getPersons() -> [Person]{
    
        return self.persons
    }
}
