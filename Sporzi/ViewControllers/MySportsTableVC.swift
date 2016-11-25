//
//  MySportsTableVC.swift
//  Sporzi
//
//  Created by Rental on 23/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class MySportsTableVC: UIViewController,UITableViewDelegate,UITableViewDataSource
{
 var arrImages = ["football","basketball"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MySportsTableCell
        cell.imgSports.image = UIImage(named: arrImages[indexPath.row])
        CommonMethod.ViewDesign(view: cell.backView)
        CommonMethod.ViewDesignBlack(view: cell.playingdyView)
        CommonMethod.ViewDesignBlack(view: cell.playingTimeView)
        CommonMethod.buttonDesignBorder(btn: cell.btnProLevel)
                CommonMethod.buttonDesignBorder(btn: cell.btnProLevel)
                CommonMethod.buttonDesignBorder(btn: cell.btnPosition)
                CommonMethod.buttonDesignBorder(btn: cell.btnFrequency)
                CommonMethod.buttonDesignBorder(btn: cell.btnPurpose)
                CommonMethod.buttonDesignBorder(btn: cell.btnArea)

        return cell
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImages.count
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
