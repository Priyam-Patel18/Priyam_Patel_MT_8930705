//
//  Lab3_ViewController.swift
//  UIDA
//
//  Created by PRIYAM PATEL on 23/01/24.
//

import UIKit

class Lab3_ViewController: UIViewController {
    
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var invisibleLabel: UILabel!
    @IBOutlet weak var resultField: UITextView!
    
    
    @IBAction func fName(_ sender: UITextField) {
    }
    
    @IBAction func lName(_ sender: UITextField) {
    }
    
    @IBAction func country(_ sender: UITextField) {
    }
    
    @IBAction func age(_ sender: UITextField) {
    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        if(fName.text == nil || fName.text!.isEmpty || lName.text == nil || lName.text!.isEmpty || country.text == nil || country.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.red
                    invisibleLabel.text = "Please Enter All Information First!"
                }
        else{
                    displayData()
                }
    }
    
    
    @IBAction func submtButton(_ sender: UIButton) {
        if(fName.text == nil || fName.text!.isEmpty || lName.text == nil || lName.text!.isEmpty || country.text == nil || country.text!.isEmpty || age.text == nil || age.text!.isEmpty){
            
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.red
                    invisibleLabel.text = "Please Complete The Missing Info!"
                }
        else{
                    invisibleLabel.isHidden = false
                    invisibleLabel.textColor = UIColor.green
                    invisibleLabel.text = "Submited Successfully"
                }
        
    }

    @IBAction func clrButton(_ sender: UIButton) {
        fName.text = ""
        lName.text = ""
        country.text = ""
        age.text = ""
        resultField.text = ""
        invisibleLabel.isHidden = true
        
    }
    
    func displayData(){
        resultField.text = "Full Name: \(fName.text!) \(lName.text!) \nCountry: \(country.text!) \nAge: \(age.text!)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        invisibleLabel.isHidden = true
        // Do any additional setup after loading the view.
    }


}

