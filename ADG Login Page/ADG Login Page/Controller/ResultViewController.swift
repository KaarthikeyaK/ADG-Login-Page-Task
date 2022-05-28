//
//  ResultViewController.swift
//  ADG Login Page
//
//  Created by KAARTHIKEYA K on 28/05/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var uText: String?
    var rText: String?
    var dText: String?
    var hText: String?

    @IBOutlet var userLabel: UILabel!
    @IBOutlet var regLabel: UILabel!
    @IBOutlet var domainLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text! += uText!
        regLabel.text! += rText!
        domainLabel.text! += dText!
        hobbiesLabel.text! += hText!
    }
    
    @IBAction func signOutButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }    
}
