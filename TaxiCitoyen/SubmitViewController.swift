//
//  SubmitViewController.swift
//  TaxiCitoyen
//
//  Created by Christopher Dugan on 11/7/17.
//  Copyright © 2017 medialab. All rights reserved.
//

import Foundation
import MessageUI
import UIKit

class SubmitViewController: UIViewController {
    
    let adminEmail = "" //admin email goes here
    var subject = ""
    var messageBody = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendEmailToAdmin() {
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self as? MFMailComposeViewControllerDelegate
        // Configure the fields of the interface.
        composeVC.setToRecipients([adminEmail])
        composeVC.setSubject(subject)
        composeVC.setMessageBody(messageBody, isHTML: false)
        composeVC.addAttachmentData(<#T##attachment: Data##Data#>, mimeType: <#T##String#>, fileName: <#T##String#>) // attach video here
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController,
                               didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        // Check the result or perform other tasks.
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
    }
    
}
