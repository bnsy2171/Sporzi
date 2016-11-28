//
//  VerificationVC.swift
//  Sporzi
//
//  Created by Rental on 28/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class VerificationVC: UIViewController
{
    
    
    @IBOutlet weak var btnDone: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        CommonMethod.buttonDesignW(btn: btnDone)
        // Do any additional setup after loading the view.
    }

    @IBAction func btnBackClicked(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btnDoneClicked(_ sender: Any) {

     
        let objTeamSelection = storyboard?.instantiateViewController(withIdentifier:"TeamSelectionVC") as! TeamSelectionVC
        self.navigationController?.pushViewController(objTeamSelection, animated: true)
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
