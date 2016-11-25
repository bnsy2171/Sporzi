//
//  LoginVC.swift
//  Sporzi
//
//  Created by Rental on 22/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class LoginVC: UIViewController
{

    @IBOutlet weak var txtContactNo: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       commonMethodCall()
        // Do any additional setup after loading the view.
    }
    
    func commonMethodCall()
    {
        CommonMethod.buttonDesignW(btn: btnLogin)
        CommonMethod.textFieldDesign(textField: txtContactNo, placeholderString: "Contact Number/Email", color: UIColor.black)
        CommonMethod.textFieldDesign(textField: txtPassword, placeholderString: "Password", color: UIColor.black)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnLoginClicked(_ sender: Any) {
        
      let objCreateTeam = storyboard?.instantiateViewController(withIdentifier: "CreateTeamVC") as! CreateTeamVC
        self.navigationController?.pushViewController(objCreateTeam, animated: true)
        
    }
    
    
    @IBAction func btnForgotPsdClicked(_ sender: Any) {
        
        let objForgotPswd = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordVC") as! ForgotPasswordVC
        self.navigationController?.pushViewController(objForgotPswd, animated: true)
        
    }
    
    
    @IBAction func btnSignUpClicked(_ sender: Any) {
        let objSignUp = storyboard?.instantiateViewController(withIdentifier:"SignUpVC" ) as! SignUpVC
        self.navigationController?.pushViewController(objSignUp, animated: true)
        
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
