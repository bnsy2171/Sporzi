//
//  ForgotPasswordVC.swift
//  Sporzi
//
//  Created by Rental on 22/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController
{
    
    
    @IBOutlet weak var backView: UIView!
    
    @IBOutlet weak var btnSend: UIButton!

    @IBOutlet weak var txtContactNo: UITextField!
    @IBOutlet weak var btnCancel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
CommonMethod.buttonDesignW(btn: btnSend)
CommonMethod.buttonDesignW(btn: btnCancel)
        CommonMethod.textFieldDesign(textField: txtContactNo, placeholderString: "Contact Number/Email", color: UIColor.black)
         self.backView.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSendClicked(_ sender: Any) {
        let objMySports = storyboard?.instantiateViewController(withIdentifier: "MySportsVC") as! MySportsVC
        self.navigationController?.pushViewController(objMySports, animated: true)
        
    }
    
    
    @IBAction func btnCancelClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnBackClicked(_ sender: Any) {
        
      self.navigationController?.popViewController(animated: true)
        
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
