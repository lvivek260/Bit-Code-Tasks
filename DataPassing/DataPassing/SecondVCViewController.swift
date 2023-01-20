//
//  SecondVCViewController.swift
//  DataPassing
//
//  Created by Admin on 18/01/23.
//

import UIKit

class SecondVCViewController: UIViewController {

    @IBOutlet weak var Technology: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var firstName: UILabel!
    var technologyVar:String = ""
    var secondNameVar:String = ""
    var firstNameVar:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        Technology.text = "Technology :" + technologyVar
        secondName.text = "Last Name :" + secondNameVar
        firstName.text = "First Name :" + secondNameVar
    }

}
