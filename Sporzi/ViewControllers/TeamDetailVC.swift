//
//  TeamDetailVC.swift
//  Sporzi
//
//  Created by Rental on 25/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class TeamDetailVC: UIViewController
{
    var _currentPage: NSInteger = 0
    var _page: NSInteger = 0
    @IBOutlet weak var scrolView: UIScrollView!

    override func viewDidLoad()
    {
        super.viewDidLoad()
               self.scrolView.contentSize = CGSize(width: 2*self.view.frame.width,height: self.scrolView.frame.height);
        self.addChildViewController((self.storyboard?.instantiateViewController(withIdentifier: "TeamInformationDetailVC"))! as! TeamInformationDetailVC)
        self.addChildViewController((self.storyboard?.instantiateViewController(withIdentifier: "LoginVC"))! as! LoginVC)
        self.loadScrollView()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnInformationClicked(_ sender: Any) {
        animateScrollViewHorizontally(destinationPoint: CGPoint(x: 0 * self.view.frame.width, y: 0), andScrollView: self.scrolView, andAnimationMargin: 30);
      
    }
    
    @IBAction func btnSportsClicked(_ sender: Any)
    {
        animateScrollViewHorizontally(destinationPoint: CGPoint(x: 1 * self.view.frame.width, y: 0), andScrollView: self.scrolView, andAnimationMargin: 30);
    }
    
    func loadScrollView ()
    {
        _currentPage=0;
        _page = 0;
        for index in 0 ..< self.childViewControllers.count
        {
            self.loadScrollViewWithPage(index);
        }
    }
    func loadScrollViewWithPage(_ page : Int) -> Void
    {
        if(page < 0)
        {
            return
        }
        if page >= self.childViewControllers.count
        {
            return
        }
        let viewController: UIViewController? = (self.childViewControllers as NSArray).object(at: page) as? UIViewController
        if(viewController == nil)
        {
            return
        }
        if(viewController?.view.superview == nil)
        {
            var frame: CGRect  = self.scrolView.frame
            frame.origin.x = self.view.frame.width*CGFloat(page)
            frame.origin.y = 0;
            viewController?.view.frame = frame;
            self.scrolView.addSubview(viewController!.view);
        }
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
