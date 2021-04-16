//
//  ViewController.swift
//  Christian_SegueLoginPage 
//
//  Created by Christian Severin on 4/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var ForgotUsernameOutlet: UIButton!
    
    @IBOutlet weak var ForgotPasswordOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func ForgotUsername(_ sender: UIButton) { performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    @IBAction func ForgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = UsernameTextField.text
        guard let sender = sender as? UIButton else {return};  if sender == ForgotUsernameOutlet { segue.destination.navigationItem.title = "Forgot Username" } else if sender == ForgotPasswordOutlet {segue.destination.navigationItem.title = "Forgot Password" } else {segue.destination.navigationItem.title = UsernameTextField.text }
    }
}



