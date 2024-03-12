//
//  Lab2_ViewController.swift
//  Priyam_Patel_MT_8930705
//
//  Created by PRIYAM PATEL on 06/03/24.
//


import UIKit

class Lab2_ViewController: UIViewController {

//--------------------------------------MARK: - Properties-------------------------------------------------------
    
    var screenNumber = 0 // Variable to store the current screen number
    var flag = 0 // Flag to indicate the step increase mode
    
    @IBOutlet weak var opLabel: UILabel! // Label to display the current screen number
    
//-----------------------------------------MARK: - IBActions-----------------------------------------------------
    // Decrease button action
    @IBAction func decButton(_ sender: Any) {
        if (flag == 0)
        {
            // Decrease screenNumber by 1 when not in step increase mode
            screenNumber -= 1
            opLabel.text = String(screenNumber)
        }
        else if (flag==1){
            // Decrease screenNumber by 2 when in step increase mode
            screenNumber -= 2
            opLabel.text = String(screenNumber)
        }
    }
    
    // Increase button action
    @IBAction func incButton(_ sender: Any) {
        if (flag == 0)
        {
            // Increase screenNumber by 1 when not in step increase mode
            screenNumber += 1
            opLabel.text = String(screenNumber)
        }
        else if (flag==1){
            // Increase screenNumber by 2 when in step increase mode
            screenNumber += 2
            opLabel.text = String(screenNumber)
        }
    }
    
    // Reset button action
    @IBAction func resetButton(_ sender: Any) {
        // Reset flag and screenNumber to initial values, update the label
        flag = 0
        screenNumber = 0
        opLabel.text = String(screenNumber)
        
    }
    
    // Step Increase button action
    @IBAction func stepIncreaseButton(_ sender: Any) {
            flag = 1 // Set flag to enter step increase mode
    }
    @IBOutlet weak var image: UIImageView!
    
//--------------------------------------MARK: - View Lifecycle---------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}


