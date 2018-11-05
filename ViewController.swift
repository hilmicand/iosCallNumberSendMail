//
//  ViewController.swift
//  AraVeMailGonder
//
//  Created by Hilmi on 5.11.2018.
//  Copyright © 2018 hilmicand. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func callNumber(_ sender: Any) {
        /// Events of calling number...
        if let url = URL(string: "tel://\("target_number")"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.openURL(url)
            
        }
    }
    
    @IBAction func sendMail(_ sender: Any) {
        // Events of sending mail....
        let mailComposerVC = MFMailComposeViewController()
            mailComposerVC.mailComposeDelegate = self
            mailComposerVC.setToRecipients(["targetmailadress@target.com"])
            mailComposerVC.setSubject("Subject Title")
            mailComposerVC.setMessageBody("This is a Message", isHTML: false)
            self.present(mailComposerVC, animated: true, completion: nil)
        
    }

}

