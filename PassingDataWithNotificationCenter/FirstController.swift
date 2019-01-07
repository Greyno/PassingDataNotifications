//
//  FirstController.swift
//  PassingDataWithNotificationCenter
//
//  Created by Gillian Reynolds-Titko on 1/6/19.
//  Copyright © 2019 GRey-T-Programs. All rights reserved.
//

//Code inspirtation: https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/
//https://learnappmaking.com/notification-center-how-to-swift/
//Use this sample code to pass data from one VC to another using Notification
import UIKit

class FirstController: UIViewController {

    @IBOutlet weak var savedNameLabel: UILabel!
    @IBOutlet weak var savedUserNameLabel: UILabel!
    
    static let notificationName = Notification.Name("userSettingsUpdated")
    
    //Register the Listener/Observer to listen for notifications called 'notificationName'
    override func viewDidLoad() {
        super.viewDidLoad()
        // The Notification Center notifies FirstController that a notification it observes has been posted by calling a selector on FirstController
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: FirstController.notificationName, object: nil)
    }

    //This function is invoked when the notification is received from the NotificationCenter
    @objc func onNotification(notification:Notification)
    {
        // `userInfo` contains the data you sent along with the notification
        savedUserNameLabel.text = notification.userInfo?["name"] as? String
        savedNameLabel.text = notification.userInfo?["userName"] as? String
        print("I have received the notification")
        print(notification.userInfo as Any)
    }

}

