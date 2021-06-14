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

    var window: UIWindow?
    
    @IBOutlet weak var loginBtnGoogle: UIButton!
    
    
    @IBOutlet weak var loginBtnWithoutAccount: UIButton!
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance()?.delegate = self
     
    }
    
    
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        GIDSignIn.sharedInstance()?.signIn()
        
    }

   
    @IBAction func loginBtnWithoutClicked(_ sender: UIButton) {
        let auth = Auth.auth()
            .signInAnonymously { (result, error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
           print("sucessfuly signed anonymous")
                let controller = self.storyboard?.instantiateViewController(withIdentifier:"HomeViewController") as! HomeViewController
                controller.modalPresentationStyle = .fullScreen
                controller.modalTransitionStyle = .flipHorizontal
                self.present(controller, animated: true, completion: nil)
        }
    }
    
}

extension LoginViewController: GIDSignInDelegate {
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
        print(error.localizedDescription)
        return
        }
        guard let auth = user.authentication else { return }
        let credentials = GoogleAuthProvider.credential(withIDToken: auth.idToken, accessToken: auth.accessToken)
        Auth.auth().signIn(with: credentials) { (authResult, error) in
        if let error = error {
        print(error.localizedDescription)
        } else {
        print("Login Google SigIn Successful.")
            let controller = self.storyboard?.instantiateViewController(withIdentifier:"HomeViewController") as! HomeViewController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            self.present(controller, animated: true, completion: nil)
            
            
        }
            
        }
       
    }
}
