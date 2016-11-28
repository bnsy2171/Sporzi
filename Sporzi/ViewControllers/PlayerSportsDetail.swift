//
//  PlayerSportsDetail.swift
//  Sporzi
//
//  Created by Rental on 28/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class PlayerSportsDetail: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    
var imgArray = ["football","volleyball","basketball"]
    var sportsTitleArr = ["Football","Volleyball","Basketball"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PlayerSportsDetailCell
        CommonMethod.ViewDesign(view: cell.backView)
        cell.lblWin.layer.cornerRadius = 10
        cell.lblWin.clipsToBounds = true
        cell.lblLosses.clipsToBounds = true
        cell.lblLosses.layer.cornerRadius = 10
        cell.imgSports.image = UIImage(named:imgArray[indexPath.row])
        cell.lblSportsTitle.text = sportsTitleArr[indexPath.row]
        return cell
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
