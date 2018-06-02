//
//  FirstViewController.swift
//  oefening1
//
//  Created by student on 01/06/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import QuartzCore



class DisplayMVPController: UITableViewController {

    var persons = PersonData.instance.getPersons()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idTab", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row].name + " " + persons[indexPath.row].lastname
        cell.imageView?.image = UIImage(named: persons[indexPath.row].avatar)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailMVP"
        {
            let vc =  segue.destination as! DetailsMVPController
            let indexPath = self.tableView.indexPathForSelectedRow
            vc.person = persons[(indexPath?.row)!]
            
            
        }
    }


}

