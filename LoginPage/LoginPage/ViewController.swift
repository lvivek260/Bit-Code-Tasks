//
//  ViewController.swift
//  LoginPage
//
//  Created by Admin on 19/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errormessageLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailOrPhoneNumberTextField: UITextField!
    @IBOutlet var faceBookLoginView: UIView!
    
    let email:String = "lvivek260@gmail.com"
    let number:String = "8421304231"
    let password:String = "Vivek@123"
    override func viewDidLoad() {
        super.viewDidLoad()
//        faceBookLoginView.backgroundColor = UIColor(red: 0.23, green: 0.35, blue: 0.6, alpha: 1)
        errormessageLabel.isHidden = true
    }

    @IBAction func loginButtonClick(_ sender: Any) {
        errormessageLabel.isHidden = true
        if(passwordTextField.text!.isEmpty||emailOrPhoneNumberTextField.text!.isEmpty){
            errormessageLabel.isHidden = false
            errormessageLabel.text = "Please Enter Email and Password"
        }else{
            if((email==emailOrPhoneNumberTextField.text!||number==emailOrPhoneNumberTextField.text!)&&(passwordTextField.text!==password)){
                let Sv = self.storyboard?.instantiateViewController(withIdentifier: "facebookPage") as! facebookPage
             
                self.navigationController?.pushViewController(Sv, animated: true)
                
            }else{
                errormessageLabel.isHidden = false
                errormessageLabel.text = "Email or Password Incorrect"
            }
        }
    }
    
    @IBAction func needHelpButtonClick(_ sender: UIButton) {
        print("Go to need help page")
    }
    @IBAction func SignUpButtonClick(_ sender: Any) {
        print("go to sign page")
    }
}


