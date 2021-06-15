//
//  AddWorkoutViewController.swift
//  Gym Purple
//
//  Created by Gabriel on 14/06/21.
//

import UIKit

class AddWorkoutViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var commentTextField: UITextField!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    
    @IBOutlet weak var cancelBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func nameTextFieldEdited(_ sender: UITextField) {
    }
    
    @IBAction func commentTextFieldEdited(_ sender: Any) {
    }
    
    @IBAction func saveBtnClicked(_ sender: Any) {
    }
    
    @IBAction func cancelBtnClicked(_ sender: Any) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        controller.modalPresentationStyle =
            .fullScreen
        controller.modalTransitionStyle =
            .coverVertical
        
        
        present(controller, animated: true, completion: nil)
            
      
    }
    
    
}
