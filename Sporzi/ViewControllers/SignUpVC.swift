//
//  SignUpVC.swift
//  Sporzi
//
//  Created by Rental on 22/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController
{
    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtMobileNo: UITextField!
    
    @IBOutlet weak var txtDOB: UITextField!
    
    @IBOutlet weak var txtCountry: UITextField!
    
    @IBOutlet weak var txtCity: UITextField!
    
    @IBOutlet weak var txtArea: UITextField!
    
    @IBOutlet weak var txtUserName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var txtConfirmPassword: UITextField!

    @IBOutlet weak var btnMale: UIButton!
    
    @IBOutlet weak var btnFemale: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
commonMethodCall()
        // Do any additional setup after loading the view.
    }

    func commonMethodCall()
    {
        
        btnMale.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        btnMale.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        btnMale.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        btnFemale.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        btnFemale.titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        btnFemale.imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)

    CommonMethod.textFieldDesign(textField: txtFirstName, placeholderString: "First Name", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtLastName, placeholderString: "Last Name", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtEmail, placeholderString: "Email", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtMobileNo, placeholderString: "Mobile Number", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtDOB, placeholderString: "Date of Birth", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtCountry, placeholderString: "Country", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtCity, placeholderString: "City", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtArea, placeholderString: "Area", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtUserName, placeholderString: "Username", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtPassword, placeholderString: "Password", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtConfirmPassword, placeholderString: "Confirm Password", color: UIColor.black)
CommonMethod.buttonDesignW(btn: btnNext)
    
    }
    
    @IBAction func btnLoginHereClicked(_ sender: Any) {
        
        let objLoginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        self.navigationController?.pushViewController(objLoginVC, animated: true)
        
    }
    
    @IBAction func btnNextClicked(_ sender: Any) {
        let objPlayerAd = storyboard?.instantiateViewController(withIdentifier: "PlayerAdVC") as! PlayerAdVC
        self.navigationController?.pushViewController(objPlayerAd, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
