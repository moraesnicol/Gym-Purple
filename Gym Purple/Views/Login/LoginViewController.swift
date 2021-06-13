//
//  LoginViewController.swift
//  Gym Purple
//
//  Created by Gabriel on 13/06/21.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginViewController: UIViewController {

   
    

    
    
   

    
    @IBOutlet weak var loginBtnGoogle: UIButton!
    
    
    
    override func viewDidLoad() {
            
            super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
     
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        GIDSignIn.sharedInstance()?.signIn()
    }
    
}
