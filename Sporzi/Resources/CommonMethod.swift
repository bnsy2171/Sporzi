//
//  Common.swift
//  MyFuelMate
//
//  Created by ITRENTALINDIA on 11/24/15.
//  Copyright © 2015 Mobulous. All rights reserved.
//
import CoreLocation
import CoreData
import UIKit
//var notifStatus=CWStatusBarNotification()


class CommonMethod: NSObject {

    var isCheck : Bool = false
//    let managedObjectContext = (UIApplication.sharedApplication.delegate as! AppDelegate ).managedObjectContext
    //static public var isLogin = false
    
    
           //     static public   var arrLogin : NSMutableArray = NSMutableArray()
    
    // method To design UIButton
    // call from otherClass
    //CommonMethod.buttonDesignW(emailBtn)
    
    
    
//  class func navigationBarRightButtonsWithViewController(vC : UIViewController)
//    {
//        let btn = UIButton(type: UIButtonType.Custom)
//        btn.setImage(UIImage(named: "home"), forState: UIControlState.Normal)
//        btn.sizeToFit()
//        let DynamicView=UIView(frame: CGRectMake(-10, 0, 30, 30))
//        DynamicView.backgroundColor=UIColor.clearColor()
//        
//        let label = UILabel(frame: CGRectMake(7, 17, 16, 16))
//        // label.center = CGPointMake(160, 284)
//        label.textAlignment = NSTextAlignment.Center
//        let objAppdelegate = UIApplication.sharedApplication().delegate as? AppDelegate
//        label.text = objAppdelegate?.notificationCount
//        if objAppdelegate?.notificationCount == "0" || objAppdelegate?.notificationCount == "" {
//            
//            label.hidden = true
//            
//        }else{
//            
//            label.hidden = false
//        }
//        
//        label.layer.cornerRadius = 8
//        
//        label.backgroundColor = UIColor(red: 38.0/255.0, green: 83.0/255.0, blue: 140.0/255.0, alpha: 1.0)
//        label.layer.masksToBounds = true
//        label.textColor = UIColor(red: 38.0, green: 83.0, blue: 140.0, alpha: 1.0)
//        label.font = UIFont(name: "OpenSans", size: 5)
//        DynamicView.addSubview(btn)
//        DynamicView.addSubview(label)
//        let rightBB: UIBarButtonItem = UIBarButtonItem(customView: DynamicView)
//        vC.navigationItem.rightBarButtonItems = [rightBB ]
//        //btn.addTarget(self, action: #selector(CommonViewController.HomeButtonAction(_:)), forControlEvents: UIControlEvents.TouchUpInside)
//        
//    }

    
    class func buttonDesignW(btn:UIButton){
        //btn.layer.borderWidth = 1.5
        //btn.layer.borderColor = UIColor.blackColor().CGColor
        btn.layer.cornerRadius = 20
    }
    class func buttonDesign(btn:UIButton){
   //     btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor( red: 0.0, green: 0.0, blue:0.0, alpha: 0.5).cgColor
        btn.layer.cornerRadius = 20
    }
    class func buttonDesignBorder(btn:UIButton){
        btn.layer.borderWidth = 1
       // btn.layer.borderColor = UIColor.black.cgColor
        btn.layer.cornerRadius = 15
              btn.layer.borderColor = UIColor( red: 120.0/255, green: 120.0/255, blue:120.0/255, alpha: 0.5).cgColor
    }
    
     class func checkedFunction (btn:UIButton)
    {
        
        var isChecked : Bool = false
            {
            didSet
            {
                if isChecked == true
                {
                    btn.setImage(UIImage(), for: .normal)
                }
                else
                    
                {
                    btn.setImage( UIImage() , for: .normal)
                    
                }
            }
        }
    }

  
    // method To design UiView
    // call from otherClass
    //CommonMethod.ViewDesign(Uiview)
    class func ViewDesign(view:UIView)
    {
       
      
      view.layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor

       view.layer.borderWidth = 1
       // view.layer.cornerRadius = 5
       
        
    }
    class func ViewDesignW(view:UIView)
    {
        
        
        view.layer.borderColor = UIColor(red:222/255.0, green:225/255.0, blue:227/255.0, alpha: 1.0).cgColor
        
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 20

    }
    

    
    class func ViewDesignBlack(view:UIView){
        
        
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 15
        view.layer.borderColor = UIColor( red: 120.0/255, green: 120.0/255, blue:120.0/255, alpha: 0.5).cgColor
        
    }
    class func appDelegate()->AppDelegate{

   
        return UIApplication.shared.delegate as! AppDelegate
    }
    
//   
// class   func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!)
//    {
//           //       viewMap.camera = GMSCameraPosition.cameraWithTarget(newLocation.coordinate, zoom: 10.0)
//        
//        print(newLocation)
//        
//    }
//    
    
    
    
    class func txtForBorder(textField:UITextField){
        
        
        let myColor : UIColor = UIColor( red: 255.0, green: 255.0, blue:255.0, alpha: 0.2)
        textField.layer.borderColor = myColor.cgColor
        textField.layer.borderWidth = 1.5
        textField.layer.cornerRadius = 3
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(14, 0, 0)
        
    }

    
    class  func textFieldDesign(textField:UITextField, placeholderString:String,color:UIColor){
      
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(0, 0, 0)
        
        
        
     
        textField.attributedPlaceholder = NSAttributedString(string:placeholderString,attributes:[NSForegroundColorAttributeName: UIColor( red: 128/255, green: 128/255, blue:128/255, alpha:1)])

    }
    class  func textFieldDesignBlack(textField:UITextField, placeholderString:String,color:UIColor){
    
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(0, 0, 0)
        
        
        
        
    }
    
    //MARK:Alert
    
    class func makeAlert(alertMsg:String)
    {
    var alert =   UIAlertView(title: "Dar Property", message: alertMsg, delegate: nil, cancelButtonTitle: "OK")
        
        alert.show()

       
    }

    
    
    //MARK:validation
    
    
    class func validateEmptyString(name:String, withIdentifier:String)->Bool
    {
        
        if (name.isEmpty || name.length == 0) {
            
            let str = String(format: "please enter %@", withIdentifier)
            self.makeAlert(alertMsg: str)
            return false
        }
        return true
    }
   
    
       
    class func validateEmailWithString(email:String, withIdentifier:String)->Bool
    {
        if (email.isEmpty || email.length == 0)
        {
            let str = String(format: "Please enter %@", withIdentifier)
            self.makeAlert(alertMsg: str)
            return false
        }
        else
        {
            let emailRegex:String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
            let emailTest:NSPredicate = NSPredicate(format:"SELF MATCHES %@",emailRegex)
            if !emailTest .evaluate(with: email){
                let str = String(format: "Please enter valid %@", withIdentifier)
                self.makeAlert(alertMsg: str)
                return false
            }
        }
        return true
    }
    
    
//   class public  func isValidTextField(value: String) -> Bool
//    {
//        
//        let aSet = NSCharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-_ ").inverted
//        let compSepByCharInSet = value.componentsSeparatedByCharactersInSet(aSet)
//        let numberFiltered = compSepByCharInSet.joinWithSeparator("")
//        return value == numberFiltered
//        
//    }
    
    class func validatePhoneNumberWithString(number:String, withIdentifier:String)->Bool
    {
        
        if (number.isEmpty || number.length == 0)
        {
            let str = String(format: "Please enter %@", withIdentifier)
            self.makeAlert(alertMsg: str)
            return false
        }
        if number.length < 10
        {
            let str = String(format: "Please enter valid %@", withIdentifier)
            self.makeAlert(alertMsg: str)
            return false
        }
    
       
        let numberRegex:String = "[0-9+]+$"
 
        let numberTest:NSPredicate = NSPredicate(format:"SELF MATCHES %@",numberRegex)
        if !numberTest .evaluate(with: number){
            let str = String(format: "Please enter valid %@", withIdentifier)
            self.makeAlert(alertMsg: str)
            return false
        }
        return true
    }
//    class func validateMobileNumber(number:String, withIdentifier:String)->Bool{
//        let phoneUtil = NBPhoneNumberUtil()
//        
//        
//        do {
//            let phoneNumber: NBPhoneNumber = try phoneUtil.parse(number, defaultRegion: "IN")
//        
//            if !phoneUtil.isValidNumber(phoneNumber) {
//                let str = String(format: "please enter valid %@", withIdentifier)
//                self.makeAlert(str)
//                return false
//
//                
//            }
//            print(phoneUtil.isValidNumber(phoneNumber))
//            
//        }
//        catch let error as NSError {
//            print(error.localizedDescription)
//        }
//        
//        return true
//    }
 
//    class func showNotificationStatus(message:NSString,bgColor:UIColor)
//    {
//        notifStatus.notificationLabelBackgroundColor = bgColor
//        notifStatus.notificationLabelTextColor = UIColor.blackColor()
//        
//        notifStatus.displayNotificationWithMessage(message as String, forDuration: 3.0)
//    }
    
    
//   class func switchToLoginScreen(){
    
        
//        let objNavLogin = Constants.StoryBoard.storyboard.instantiateViewControllerWithIdentifier("navLogin") as! UINavigationController
//        NSUserDefaults.standardUserDefaults().setObject(nil, forKey: Constants.LoginConstants.AutoLogin)
//        NSUserDefaults.standardUserDefaults().setObject(nil, forKey: Constants.GuestAutoLogin.GuestAutoLogin)
//        NSUserDefaults.standardUserDefaults().setObject(nil, forKey: Constants.GuestAutoLoginForWall.GuestAutoLoginForWall)
//    
//        Constants.AppDelegateConstants.objAppDelegate.window?.rootViewController = objNavLogin
//        
    
        
    //}
    
    
  class  func switchToLoginScreen(){
        
//        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.removeObjectForKey("login")
//        defaults .synchronize()
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let signUpNav = storyboard.instantiateViewController(withIdentifier: "LoginVC") 
        
        appDelegate.window!.rootViewController = signUpNav
        
    }

    

}
//extension Reachability1
//{
//    func isInternetAvailable()->Bool
//    {
//        let reach = Reachability1.reachabilityForInternetConnection()
//        if(!reach.isReachable())
//        {
//            
//            CommonMethod.showNotificationStatus("No Internet Connection", bgColor: UIColor.redColor());
//            //notifStatus.notificationLabelBackgroundColor = UIColor.redColor()
//            // notifStatus.notificationLabelTextColor = UIColor.blackColor()
//            
//            // notifStatus.displayNotificationWithMessage("No Network Connection", forDuration: 3.0)
//        }
//        
//        return reach.isReachable()
//    }
//    
//}

extension String
{
    var length : Int
    {
        return self.characters.count
    }
}
