//
//  AddWorkoutViewController.swift
//  Gym Purple
//
//  Created by Gabriel on 14/06/21.
//

import UIKit
import Firebase

class AddWorkoutViewController: UIViewController {
    
    let db = Firestore.firestore()
    
    
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
        
        //create
        
        //   db.collection("workout-test4").addDocument(data: ["nome" : "flexão", "description": "subir e descer o corpo", "data" : "xx/xx/xx"])
       
        //Getting the document ID
        
        //  let newDocument = db.collection("workout-test5").document()
        // newDocument.setData(["nome": "supino", "description": "supino no banco reto 45º", "id": newDocument.documentID ])
    
        //Adding a document with a specifc document ID / Or Replacing the data for a specfic document ID
        
        //update
        
       // db.collection("workouts").document("treino-c").setData(["data":"Date"], merge: true)
        
       //Delete a document
       // db.collection("workouts").document("treino-c").delete()
        
        //Delete a field
        //    db.collection("workouts").document("treino-c").updateData(["type":FieldValue.delete()])
    
        
    
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        controller.modalPresentationStyle =
            .fullScreen
        present(controller, animated: true, completion: nil)
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
