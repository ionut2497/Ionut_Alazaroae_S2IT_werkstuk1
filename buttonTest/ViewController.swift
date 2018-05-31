//
//  ViewController.swift
//  buttonTest
//
//  Created by student on 31/05/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func buttonPushed(_ sender: UIButton) {
        let title = sender.title(for:.normal)
        myLabel.text = "you clicked \(title!) "

    }
    
    
    


}

