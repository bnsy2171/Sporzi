//
//  CreateTeamVC.swift
//  Sporzi
//
//  Created by Rental on 22/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class CreateTeamVC: UIViewController
{

    @IBOutlet weak var btnBrouserPlyr: UIButton!
    
    @IBOutlet weak var btnCreate: UIButton!
    
    @IBOutlet weak var btnReqSkillOfplyrs: UIButton!
    
    @IBOutlet weak var btnInviteFrnds: UIButton!
    
    @IBOutlet weak var btnAddByUser: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
CommonMethod.buttonDesignW(btn: btnCreate)
        btnBrouserPlyr.layer.cornerRadius = btnBrouserPlyr.frame.width/2
          btnInviteFrnds.layer.cornerRadius = btnInviteFrnds.frame.width/2
               btnAddByUser.layer.cornerRadius = btnAddByUser.frame.width/2
         btnReqSkillOfplyrs.layer.cornerRadius = btnReqSkillOfplyrs.frame.width/2
    }
    
    
    @IBAction func btnCreateClicked(_ sender: Any) {
        
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
