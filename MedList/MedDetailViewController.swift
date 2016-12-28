//
//  MedDetailViewController.swift
//  MedList
//
//  Created by Britney Martinez on 12/6/16.
//  Copyright © 2016 NYU. All rights reserved.
//

import UIKit
import EventKit
import SafariServices

class MedDetailViewController: UIViewController {
    var eventStore: EKEventStore!
    var reminders: [EKReminder]!
    @IBOutlet var syringeImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var smallSyringe: UIImageView!
    
    var med:Med!

    override func viewDidLoad() {
        super.viewDidLoad()
             // Do any additional setup after loading the view.
        syringeImageView.image = UIImage(named: med.image)
        infoLabel.text = "Take " + med.volume + " " + med.timesADay + " times a day"
        descriptionLabel.text = "Reason for prescription: " +  med.reason
        title = med.name
        smallSyringe.image = UIImage(named: med.image)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showLink(){
        let url = URL(string: med.url)
        let safariController = SFSafariViewController(url: url!)
        present(safariController,animated: true, completion: nil)
        
        
    }
    
    @IBAction func showDiseaseLink(){
        let url = URL(string: med.diseaseUrl)
        let safariController = SFSafariViewController(url: url!)
        present(safariController,animated: true, completion: nil)
    }
    
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
