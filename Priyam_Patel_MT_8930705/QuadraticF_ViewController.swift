import UIKit

class QuadraticF_ViewController: UIViewController {
    
    @IBOutlet weak var inputA: UITextField!
    @IBOutlet weak var inputB: UITextField!
    @IBOutlet weak var inputC: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBAction func calculateResult(_ sender: UIButton) {
        guard let a = Double(inputA.text ?? ""),
              let b = Double(inputB.text ?? ""),
              let c = Double(inputC.text ?? "") else {
            errorLabel.isHidden = false
            showError("Enter valid values for A, B, and C.")
            return
        }
        
        if a == 0{
            errorLabel.isHidden = false
            showError("The value you entered for A is invalid.")
            return
        }
        
        if b==0{
            errorLabel.isHidden = false
            showError("The value you entered for B is invalid.")
            return
        }
        
        if c==0{
            errorLabel.isHidden = false
            showError("The value you entered for C is invalid.")
            return
        }

        let discriminant = b * b - 4 * a * c
        
        if discriminant < 0 {
            errorLabel.isHidden = false
            showError("There are no results since the discriminant is less than zero.")
        } else {
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
    
    func calculateRoots(a: Double, b: Double, c: Double, discriminant: Double) -> (Double, Double) {
        if discriminant > 0 {
            let x1 = (-b + sqrt(discriminant)) / (2 * a)
            let x2 = (-b - sqrt(discriminant)) / (2 * a)
            return (x1, x2)
        } else if discriminant == 0 {
            let x = -b / (2 * a)
            return (x, x)
        } else {
            return (0.0, 0.0)
        }
    }
    
    @IBAction func clearInputs(_ sender: UIButton) {
        inputA.text = ""
        inputB.text = ""
        inputC.text = ""
        errorLabel.isHidden = false
        showError("Enter the values for A, B, and C to find X.")
    }
    
    func showError(_ message: String) {
        errorLabel.textColor = .red
        errorLabel.text = message
    }
    
    func showResult(_ message: String) {
        errorLabel.textColor = .black
        errorLabel.text = message
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
