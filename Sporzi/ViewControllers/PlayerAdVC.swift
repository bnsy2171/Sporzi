//
//  PlayerAdVC.swift
//  Sporzi
//
//  Created by Rental on 24/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class PlayerAdVC: UIViewController
{

    @IBOutlet weak var btnPost: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
CommonMethod.buttonDesignW(btn: btnPost)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnPostClicked(_ sender: Any) {
        
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
