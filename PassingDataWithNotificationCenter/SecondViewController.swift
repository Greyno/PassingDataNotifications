//
//  SecondViewController.swift
//  PassingDataWithNotificationCenter
//
//  Created by Gillian Reynolds-Titko on 1/6/19.
//  Copyright © 2019 GRey-T-Programs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameSettingField: UITextField!
    @IBOutlet weak var userNameSettingField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //The Sender posts to the Notification Center
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        // Post the notification when the button is tapped, and send along some data
        
        NotificationCenter.default.post(name: FirstController.notificationName, object: nil, userInfo:["name": nameSettingField.text!, "userName": userNameSettingField.text!])
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
