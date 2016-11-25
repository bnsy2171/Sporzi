//
//  MySportsVC.swift
//  Sporzi
//
//  Created by Rental on 23/11/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import UIKit

class MySportsVC: UIViewController
{
    var _currentPage: NSInteger = 0
    var _page: NSInteger = 0
    
    
    @IBOutlet weak var btnSportsCategry: UIButton!
    
    @IBOutlet weak var btnSportsDetail: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.contentSize = CGSize(width: 2*self.view.frame.width,height: self.scrollView.frame.height);
        self.addChildViewController((self.storyboard?.instantiateViewController(withIdentifier: "MySportsCollectionVC"))! as! MySportsCollectionVC)
        self.addChildViewController((self.storyboard?.instantiateViewController(withIdentifier: "MySportsTableVC"))! as! MySportsTableVC)
        self.loadScrollView()
        // Do any additional setup after loading the view.
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
            var frame: CGRect  = self.scrollView.frame
            frame.origin.x = self.view.frame.width*CGFloat(page)
            frame.origin.y = 0;
            viewController?.view.frame = frame;
            self.scrollView.addSubview(viewController!.view);
        }
    }
    

   
    @IBAction func btnSportsCategoryClicked(_ sender: Any)
    {
                    animateScrollViewHorizontally(destinationPoint: CGPoint(x: 0 * self.view.frame.width, y: 0), andScrollView: self.scrollView, andAnimationMargin: 30);
    }
    
    @IBAction func btnSportsDetailClicked(_ sender: Any)
    {
        
         animateScrollViewHorizontally(destinationPoint: CGPoint(x: 1 * self.view.frame.width, y: 0), andScrollView: self.scrollView, andAnimationMargin: 30);
        
    }
    
    
    @IBAction func btnSkipClicked(_ sender: Any) {
        let objTeamDetail =   storyboard?.instantiateViewController(withIdentifier: "TeamDetailVC") as! TeamDetailVC
        
        self.navigationController?.pushViewController(objTeamDetail, animated: true)
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
