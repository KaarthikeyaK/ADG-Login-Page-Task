//
//  ViewController.swift
//  ADG Login Page
//
//  Created by KAARTHIKEYA K on 28/05/22.
//

import UIKit

extension UITextField {

    func setLeftPadding(_ amount: CGFloat = 10) {

        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.bounds.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBOutlet var loginLabel: UILabel!
    
    var credentialsBrain = CredentialsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.setLeftPadding()
        passTextField.setLeftPadding()
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        
        if credentialsBrain.checkUser(username: textField.text ?? "invalid") && credentialsBrain.credentials[credentialsBrain.level].password == passTextField.text{
            self.performSegue(withIdentifier: "resultSegue", sender: self)
        } else {
            loginLabel.text = "Incorrect Username or Password"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.uText = credentialsBrain.getName()
        vc.rText = credentialsBrain.getReg()
        vc.dText = credentialsBrain.getDom()
        vc.hText = credentialsBrain.getHob()
    }
}

