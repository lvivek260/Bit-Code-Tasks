import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EmptyMessageLabel: UILabel!
    @IBOutlet weak var technologyTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        EmptyMessageLabel.isHidden = true
    }

    @IBAction func SubmitButtonAction(_ sender: UIButton) {
        EmptyMessageLabel.isHidden = true
        if (firstNameTextField.text!.isEmpty || lastNameTextField.text!.isEmpty || technologyTextField.text!.isEmpty ){
            EmptyMessageLabel.isHidden = false
            EmptyMessageLabel.text = "Empty TextField Not Allowed Please Check TextField"
            
        }else{
            EmptyMessageLabel.isHidden = true
            
            let Sv = self.storyboard?.instantiateViewController(withIdentifier: "SecondVCViewController") as! SecondVCViewController
            Sv.secondNameVar = firstNameTextField.text!
            Sv.firstNameVar =  firstNameTextField.text!
            Sv.technologyVar = technologyTextField.text!
            self.navigationController?.pushViewController(Sv, animated: true)
        }
        
    }
    
}

