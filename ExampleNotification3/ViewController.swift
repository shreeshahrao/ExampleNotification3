//
//  ViewController.swift
//  ExampleNotification3
//
//  Created by Shreesha on 20/11/21.
//

import UIKit
let notificationConstant = Notification.Name("sendText")
class ViewController: UIViewController {

    @IBOutlet weak var firstScreenTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func firstScreenButton(_ sender: Any) {
        let data = firstScreenTextField.text
        NotificationCenter.default.post(name: notificationConstant, object: data)
        
    }
    
}

