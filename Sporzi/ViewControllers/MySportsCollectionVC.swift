//
//  MySportsCollectionVC.swift
//  Sporzi
//
//  Created by Rental on 23/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class MySportsCollectionVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource
{
    
    @IBOutlet weak var btnNext: UIButton!
    
    
    var arrImages = ["football_s","badminton-1","cricket-1","volleyball_s","basket_ball_s","golf-2","snooker-2","balling-1","cycling-1","hockey-2","tabletennis","loantennis-2"]
    var arrSportsTitle = ["Football","Badminton","Cricket","Volleyball","Basketball","Golf","Billiards","Bowling","Cycling","Hockey","Table Tennis","Tennis"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CommonMethod.buttonDesignW(btn: btnNext)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImages.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! MySportsCollectionCell
    cell.imgSports.image = UIImage(named: arrImages[indexPath.row])
        cell.lblSportsTitle.text = arrSportsTitle[indexPath.row]
        return cell
    }
    
    
    @IBAction func btnNextClicked(_ sender: Any) {
        
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
