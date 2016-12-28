//
//  MedTableViewController.swift
//  MedList
//
//  Created by Britney Martinez on 11/30/16.
//  Copyright © 2016 NYU. All rights reserved.
//

import UIKit

class MedTableViewController: UITableViewController {
    
    var meds:[Med] = [
        Med(name: "Amoxicillin", type: "Antibiotic", image: "5ml_syringe.jpeg",timesADay: "two",volume: "5 mL", url: "https://www.drugs.com/amoxicillin.html",reason: "pnuemonia", diseaseUrl: "http://www.webmd.com/lung/tc/pneumonia-topic-overview"),
        Med(name: "Augmentin", type: "Antibiotic", image: "10ml_syringe.jpeg",timesADay: "three",volume: "10 mL", url: "https://www.drugs.com/augmentin.html",reason: "an animal bite", diseaseUrl: "http://www.webmd.com/first-aid/tc/animal-and-human-bites-topic-overview"),
        Med(name: "Keflex", type: "Antibiotic", image: "5ml_syringe.jpeg",timesADay: "four",volume: "5 mL",url: "https://www.drugs.com/keflex.html", reason: "strep throat", diseaseUrl: "http://www.webmd.com/oral-health/tc/strep-throat-topic-overview#1" ),
        Med(name: "Clindamycin", type: "Antibiotic", image: "3ml_syringe.jpeg",timesADay: "three",volume: "3 mL",url: "https://www.drugs.com/clindamycin.html", reason: "a skin infection", diseaseUrl: "http://www.webmd.com/skin-problems-and-treatments/guide/skin-problems-treatments-treatment-care")
    ]
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
      
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meds.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MedTableViewCell
        
        cell.nameLabel?.text = meds[indexPath.row].name
        cell.thumbnailImageView?.image = UIImage(named: "pill_bottle.jpeg")

        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showMedDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! MedDetailViewController
                destinationController.med = meds[indexPath.row]
                
                
            }
            
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
