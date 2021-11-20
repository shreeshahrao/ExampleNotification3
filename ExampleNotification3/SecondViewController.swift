//
//  SecondViewController.swift
//  ExampleNotification3
//
//  Created by Shreesha on 20/11/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondScreenLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        NotificationCenter.default.addObserver(self, selector: #selector(updateText(notifiaction:)), name: notificationConstant, object: nil)
       
    }
    @objc func updateText(notifiaction: NSNotification) {
        if let data = notifiaction.object as? String {
            secondScreenLabel.text = data
        }
    }
    


  

}
