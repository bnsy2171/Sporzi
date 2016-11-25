//
//  TeamInformationDetailVC.swift
//  Sporzi
//
//  Created by Rental on 25/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class TeamInformationDetailVC: UIViewController
{
    
    @IBOutlet weak var btnOk: UIButton!
    
    @IBOutlet weak var btnGamesWin: UIButton!
    

    @IBOutlet weak var btnGamesLoss: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        btnGamesWin.layer.cornerRadius = btnGamesWin.frame.width/2
         btnGamesLoss.layer.cornerRadius = btnGamesLoss.frame.width/2
        CommonMethod.buttonDesignW(btn: btnOk)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnOkClicked(_ sender: Any) {
        
        
        self.navigationController?.popViewController(animated: true)
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
