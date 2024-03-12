//
//  Lab3_ViewController.swift
//  UIDA
//
//  Created by PRIYAM PATEL on 23/01/24.
//

import UIKit

class Lab3_ViewController: UIViewController {
   
//-----------------------------------------MARK: - OUTLETS-------------------------------------------------------
    
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var invisibleLabel: UILabel!
    @IBOutlet weak var resultField: UITextView!
    
//-----------------------------------------MARK: - IBActions-----------------------------------------------------
    
    @IBAction func fName(_ sender: UITextField) {
    }
    
    @IBAction func lName(_ sender: UITextField) {
    }
    
    @IBAction func country(_ sender: UITextField) {
    }
    
    @IBAction func age(_ sender: UITextField) {
    }
    
    // Add button action
    @IBAction func addBtn(_ sender: UIButton) {
        // Check if any text field is empty before displaying data
        if(fName.text == nil || fName.text!.isEmpty || lName.text == nil || lName.text!.isEmpty || country.text == nil || country.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.red
                    invisibleLabel.text = "Please Enter All Information First!"
                }
        else{
                    // Display data in the resultField
                    displayData()
                }
    }
    
    // Submit button action
    @IBAction func submtButton(_ sender: UIButton) {
        // Check if any text field is empty before submission
        if(fName.text == nil || fName.text!.isEmpty || lName.text == nil || lName.text!.isEmpty || country.text == nil || country.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.red
                    invisibleLabel.text = "Please Complete The Missing Info!"
                }
        else{
            // Display submission success message
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.green
                    invisibleLabel.text = "Submited Successfully"
                }
        
    }

    // Clear button action
    @IBAction func clrButton(_ sender: UIButton) {
        // Clear all text fields, resultField, and hide the invisibleLabel
        fName.text = ""
        lName.text = ""
        country.text = ""
        age.text = ""
        resultField.text = ""
        invisibleLabel.isHidden = true
        
    }
    
    // Function to display entered data in the resultField
    func displayData(){
        resultField.text = "Full Name: \(fName.text!) \(lName.text!) \nCountry: \(country.text!) \nAge: \(age.text!)"
    }
   
//--------------------------------------MARK: - View Lifecycle---------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        invisibleLabel.isHidden = true // Hide invisibleLabel initially
        // Do any additional setup after loading the view.
    }


}

