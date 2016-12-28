//
//  remindViewController.swift
//  MedList
//
//  Created by Britney Martinez on 12/8/16.
//  Copyright © 2016 NYU. All rights reserved.
//

import UIKit
import EventKit



class remindViewController: UIViewController {
    @IBOutlet weak var reminderText: UITextField!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    let appDelegate = UIApplication.shared.delegate
        as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setReminder(_ sender: AnyObject) {
        if appDelegate.eventStore == nil {
            appDelegate.eventStore = EKEventStore()
            appDelegate.eventStore?.requestAccess(
                to: EKEntityType.reminder, completion: {(granted, error) in
                    if !granted {
                        print("Access to store not granted")
                         print(error?.localizedDescription)
                       
                    } else {
                        print("Access granted")
                    }
            })
        }
        
        if (appDelegate.eventStore != nil) {
            self.createReminder()
        }
    
    }
    func createReminder() {
        
        let reminder = EKReminder(eventStore: appDelegate.eventStore!)
        
        reminder.title = reminderText.text!
        reminder.calendar = appDelegate.eventStore!.defaultCalendarForNewReminders()
        let date = myDatePicker.date
        let alarm = EKAlarm(absoluteDate: date)
        
        reminder.addAlarm(alarm)
        
        do {
            try appDelegate.eventStore?.save(reminder,
                                             commit: true)
        } catch let error {
            print("Reminder failed with error \(error.localizedDescription)")
        }
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
