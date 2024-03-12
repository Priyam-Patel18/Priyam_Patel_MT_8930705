//
//  Canada_ViewController.swift
//  Priyam_Patel_MT_8930705
//
//  Created by PRIYAM PATEL on 03/03/24.
//

import UIKit

class Canada_ViewController: UIViewController {

//-----------------------------------------MARK: - OUTLETS-------------------------------------------------------
  
    // Text field for user to input a city name
    @IBOutlet weak var countryInput: UITextField!
    
    // Label to display error messages (initially invisible)
    @IBOutlet weak var invisibleErrorLabel: UILabel!
    
    // Image view to display the city image
    @IBOutlet weak var cityImage: UIImageView!
    
//-----------------------------------------MARK: - IBActions-----------------------------------------------------
    
    // Action triggered when the user interacts with the countryInput text field (empty for now)
    @IBAction func countryInput(_ sender: UITextField) {
    }
    
    // Action triggered when the user taps the "Find My City" button
    @IBAction func findMyCity(_ sender: UIButton) {
        // Check if the input text is empty or nil
        if(countryInput.text == nil || countryInput.text!.isEmpty){
            invisibleErrorLabel.isHidden = false
            invisibleErrorLabel.textColor = UIColor.red
            invisibleErrorLabel.text = "Please Enter Something!"
        }
        // Check for valid city names and display corresponding images
        else if(countryInput.text?.lowercased() == "calgary"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Calgary")
        }
        else if(countryInput.text?.lowercased() == "halifax"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Halifax")
        }
        else if(countryInput.text?.lowercased() == "montreal"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Montreal")
        }
        else if(countryInput.text?.lowercased() == "toronto"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Toronto")
        }
        else if(countryInput.text?.lowercased() == "vancouver"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Vancouver")
        }
        else if(countryInput.text?.lowercased() == "winnipeg"){
            invisibleErrorLabel.isHidden = true
            cityImage.image = UIImage(named: "Winnipeg")
        }
        else{
            // Display error message for invalid city names
            invisibleErrorLabel.isHidden = false
            invisibleErrorLabel.textColor = UIColor.red
            invisibleErrorLabel.text = "Enter Valid City Name!"
        }
    }
    
    
//--------------------------------------MARK: - Keyboard Dismissal-----------------------------------------------
    
    // Calls this function when the tap is recognized.
    @objc func dismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
//--------------------------------------MARK: - View Lifecycle---------------------------------------------------
    
    // Called after the controller's view is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial image and hide error label
        cityImage.image = UIImage(named: "Canada")
        
        invisibleErrorLabel.isHidden = true
        
        //Set up tap gesture for keyboard dismissal
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

}
