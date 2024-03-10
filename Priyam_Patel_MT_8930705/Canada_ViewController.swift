//
//  Canada_ViewController.swift
//  Priyam_Patel_MT_8930705
//
//  Created by PRIYAM PATEL on 03/03/24.
//

import UIKit

class Canada_ViewController: UIViewController {

    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var invisibleErrorLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    @IBAction func countryInput(_ sender: UITextField) {
    }
    
    @IBAction func findMyCity(_ sender: UIButton) {
        if(countryInput.text == nil || countryInput.text!.isEmpty){
            invisibleErrorLabel.isHidden = false
            invisibleErrorLabel.textColor = UIColor.red
            invisibleErrorLabel.text = "Please Enter Something!"
        }
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
            invisibleErrorLabel.isHidden = false
            invisibleErrorLabel.textColor = UIColor.red
            invisibleErrorLabel.text = "Enter Valid City Name!"
        }
    }
    
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityImage.image = UIImage(named: "Canada")
        invisibleErrorLabel.isHidden = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

                  //Uncomment the line below if you want the tap not not interfere and cancel other interactions.

                  tap.cancelsTouchesInView = false

                  view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
