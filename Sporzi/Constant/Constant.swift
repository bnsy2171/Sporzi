//
//  Constant.swift
//  Lawzgrid
//
//  Created by ITRENTALINDIA on 9/5/16.
//  Copyright © 2016 mobulous. All rights reserved.
//

import Foundation
import UIKit


let appDelegateConstant = UIApplication.shared.delegate as! AppDelegate
func applyPlainShadow(_ viewShadow: UIView)
{
    let layer = viewShadow.layer
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize(width: 0, height: 1)
    layer.shadowOpacity = 0.4
    layer.shadowRadius = 1
}

func applyDarkShadow(viewShadow: UIView)
{
    let layer = viewShadow.layer
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOffset = CGSize(width: 0, height: 1)
    layer.shadowOpacity = 0.4
    layer.shadowRadius = 5
}

func animateScrollViewHorizontally(destinationPoint destination: CGPoint, andScrollView scrollView: UIScrollView, andAnimationMargin margin: CGFloat)
{
    var change: Int = 0;
    let diffx: CGFloat = destination.x - scrollView.contentOffset.x;
    var _: CGFloat = destination.y - scrollView.contentOffset.y;
    
    if(diffx < 0)
    {
        change = 1
    }
    else
    {
        change = 2
    }
    
    UIView.beginAnimations(nil, context: nil)
    UIView.setAnimationDuration(0.3);
    UIView.setAnimationCurve(.easeIn);
    switch (change)
    {
    case 1:
        scrollView.contentOffset = CGPoint(x: destination.x - margin, y: destination.y);
    case 2:
        scrollView.contentOffset = CGPoint(x: destination.x + margin, y: destination.y);
    default:
        return;
    }
    UIView.commitAnimations();
    
    let firstDelay: Double  = 0.3;
    let startTime: DispatchTime = DispatchTime.now() + Double(Int64(firstDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    
    DispatchQueue.main.asyncAfter(deadline: startTime, execute: {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.2);
        UIView.setAnimationCurve(.linear);
        switch (change)
        {
        case 1:
            scrollView.contentOffset = CGPoint(x: destination.x + margin, y: destination.y);
        case 2:
            scrollView.contentOffset = CGPoint(x: destination.x - margin, y: destination.y);
        default:
            return;
        }
        UIView.commitAnimations();
        let secondDelay: Double  = 0.2;
        let startTimeSecond: DispatchTime = DispatchTime.now() + Double(Int64(secondDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: startTimeSecond, execute: {
            UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(0.1);
            UIView.setAnimationCurve(.easeInOut);
            scrollView.contentOffset = CGPoint(x: destination.x, y: destination.y);
            UIView.commitAnimations();
        })
        
    })
}

func animateScrollViewHorizontallyWithoutAnimation(destinationPoint destination: CGPoint, andScrollView scrollView: UIScrollView, andAnimationMargin margin: CGFloat)
{
    var change: Int = 0;
    let diffx: CGFloat = destination.x - scrollView.contentOffset.x;
    var _: CGFloat = destination.y - scrollView.contentOffset.y;
    
    if(diffx < 0)
    {
        change = 1
    }
    else
    {
        change = 2
    }
    
    UIView.beginAnimations(nil, context: nil)
    UIView.setAnimationDuration(0.0);
    UIView.setAnimationCurve(.easeIn);
    switch (change)
    {
    case 1:
        scrollView.contentOffset = CGPoint(x: destination.x - margin, y: destination.y);
    case 2:
        scrollView.contentOffset = CGPoint(x: destination.x + margin, y: destination.y);
    default:
        return;
    }
    UIView.commitAnimations();
    
    let firstDelay: Double  = 0.0;
    let startTime: DispatchTime = DispatchTime.now() + Double(Int64(firstDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    
    DispatchQueue.main.asyncAfter(deadline: startTime, execute: {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.0);
        UIView.setAnimationCurve(.linear);
        switch (change)
        {
        case 1:
            scrollView.contentOffset = CGPoint(x: destination.x + margin, y: destination.y);
        case 2:
            scrollView.contentOffset = CGPoint(x: destination.x - margin, y: destination.y);
        default:
            return;
        }
        UIView.commitAnimations();
        let secondDelay: Double  = 0.0;
        let startTimeSecond: DispatchTime = DispatchTime.now() + Double(Int64(secondDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: startTimeSecond, execute: {
            UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(0.0);
            UIView.setAnimationCurve(.easeInOut);
            scrollView.contentOffset = CGPoint(x: destination.x, y: destination.y);
            UIView.commitAnimations();
        })
        
    })
}


func animateViewHorizontally(destinationPoint destination: CGPoint, viewConstraint constraint:NSLayoutConstraint, andView view: UIView, andAnimationMargin margin: CGFloat)
{
    var change: Int = 0;
    let diffx: CGFloat = destination.x - view.frame.origin.x;
    var _: CGFloat = destination.y - view.frame.origin.y;
    
    if(diffx < 0)
    {
        change = 1
    }
    else
    {
        change = 2
    }
    UIView.beginAnimations(nil, context: nil)
    UIView.setAnimationDuration(0.3);
    UIView.setAnimationCurve(.easeIn);
    switch (change)
    {
    case 1:
        view.frame = CGRect(x: destination.x - margin,  y: view.frame.origin.y, width: view.frame.width, height: view.frame.height);
    case 2:
        view.frame = CGRect(x: destination.x + margin,  y: view.frame.origin.y, width: view.frame.width, height: view.frame.height);
    default:
        return;
    }
    UIView.commitAnimations();
    
    let firstDelay: Double  = 0.3;
    let startTime: DispatchTime = DispatchTime.now() + Double(Int64(firstDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
    
    DispatchQueue.main.asyncAfter(deadline: startTime, execute: {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.2);
        UIView.setAnimationCurve(.linear);
        switch (change)
        {
        case 1:
            view.frame = CGRect(x: destination.x + margin,  y: view.frame.origin.y, width: view.frame.width, height: view.frame.height);
        case 2:
            view.frame = CGRect(x: destination.x - margin,  y: view.frame.origin.y, width: view.frame.width, height: view.frame.height);
        default:
            return;
        }
        UIView.commitAnimations();
        let secondDelay: Double  = 0.2;
        let startTimeSecond: DispatchTime = DispatchTime.now() + Double(Int64(secondDelay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: startTimeSecond, execute: {
            UIView.beginAnimations(nil, context: nil)
            UIView.setAnimationDuration(0.1);
            UIView.setAnimationCurve(.easeInOut);
            view.frame = CGRect(x: destination.x, y: view.frame.origin.y, width: view.frame.width, height: view.frame.height);
            UIView.commitAnimations();
        })
        
    })
}

