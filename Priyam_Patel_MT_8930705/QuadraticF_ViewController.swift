import UIKit

class QuadraticF_ViewController: UIViewController {
   
//-----------------------------------------MARK: - OUTLETS-------------------------------------------------------
    
    @IBOutlet weak var inputA: UITextField!
    @IBOutlet weak var inputB: UITextField!
    @IBOutlet weak var inputC: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
//-----------------------------------------MARK: - IBActions-----------------------------------------------------
    
    @IBAction func calculateResult(_ sender: UIButton) {
        // Ensure valid input values for A, B, and C
        guard let a = Double(inputA.text ?? ""),
              let b = Double(inputB.text ?? ""),
              let c = Double(inputC.text ?? "") else {
            errorLabel.isHidden = false
            showError("Enter valid values for A, B, and C.")
            return
        }
        
        // Check for invalid value of A
        if a == 0{
            errorLabel.isHidden = false
            showError("The value you entered for A is invalid.")
            return
        }
        
        // Check for invalid value of B
        if b==0{
            errorLabel.isHidden = false
            showError("The value you entered for B is invalid.")
            return
        }
        
        // Check for invalid value of C
        if c==0{
            errorLabel.isHidden = false
            showError("The value you entered for C is invalid.")
            return
        }

        // Calculate discriminant
        let discriminant = b * b - 4 * a * c
        
        // Determine the nature of roots based on the discriminant
        if discriminant < 0 {
            errorLabel.isHidden = false
            showError("There are no results since the discriminant is less than zero.")
        } 
        else {
            
            // Calculate and display roots
            let result = calculateRoots(a: a, b: b, c: c, discriminant: discriminant)
            
            if discriminant == 0 {
                errorLabel.isHidden = false
                showResult("There is only one value for X: \(result.0)")
            } else {
                errorLabel.isHidden = false
                showResult("There are two values for X: \(result.0) and \(result.1)")
            }
        }
    }
    
//--------------------------------------MARK: - Helper Methods---------------------------------------------------
    
    func calculateRoots(a: Double, b: Double, c: Double, discriminant: Double) -> (Double, Double) {
        if discriminant > 0 {
            let x1 = (-b + sqrt(discriminant)) / (2 * a)
            let x2 = (-b - sqrt(discriminant)) / (2 * a)
            return (x1, x2)
        } else if discriminant == 0 {
            let x = -b / (2 * a)
            return (x, x)
        } else {
            // No real roots for a negative discriminant
            return (0.0, 0.0)
        }
    }
    
//--------------------------------MARK: - IBAction for Clearing Inputs-------------------------------------------
    
    @IBAction func clearInputs(_ sender: UIButton) {
        // Clear input fields and show initial error message
        inputA.text = ""
        inputB.text = ""
        inputC.text = ""
        errorLabel.isHidden = false
        showError("Enter the values for A, B, and C to find X.")
    }
    
//-----------------------------MARK: - Error and Result Display Methods------------------------------------------
    
    // Display error message in red text
    func showError(_ message: String) {
        errorLabel.textColor = .red
        errorLabel.text = message
    }
    
    func showResult(_ message: String) {
        // Display result message in black text
        errorLabel.textColor = .black
        errorLabel.text = message
    }

//--------------------------------------MARK: - Keyboard Dismissal-----------------------------------------------
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
//--------------------------------------MARK: - View Lifecycle---------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Hide error label initially and set up tap gesture for keyboard dismissal
        errorLabel.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
