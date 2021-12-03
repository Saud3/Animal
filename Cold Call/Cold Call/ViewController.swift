//
//  ViewController.swift
//  Cold Call
//
//
//

import UIKit

class ViewController: UIViewController {
    //names array
    let names = [ "Bryant", "Cody", "Jimmy", "Jay", "Ryoto","Mohammed"]
    
    //label
    @IBOutlet weak var nameLabel: UILabel!

    
    
    //button
    @IBOutlet weak var callbtn: UIButton!
    
    
    // action button
    @IBAction func calActionbrn(_ sender: UIButton) {
        nameLabel.text = names[Int(arc4random_uniform(UInt32(names.count)))]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Ready?"
        
    }
   



}

