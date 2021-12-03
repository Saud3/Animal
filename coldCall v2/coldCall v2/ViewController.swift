//
//  ViewController.swift
//  coldCall v2
//
//  Created by Aloufi Saud on 28/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let names = [ "Bryant", "Cody", "Jimmy", "Jay", "Ryoto","Mohammed"]
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func callbtn(_ sender: UIButton) {
        
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
        
        numberLabel.text = String(arc4random_uniform(5) + 1)
        if (numberLabel.text == "1" || numberLabel.text == "2") {
            numberLabel.textColor = UIColor.red
        }
        else if (numberLabel.text == "3" || numberLabel.text == "4") {
            numberLabel.textColor = UIColor.orange
        }
        else if (numberLabel.text == "5") {
            numberLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        numberLabel.text = ""
    }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
}

