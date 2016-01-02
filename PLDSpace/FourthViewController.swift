//
//  FourthViewController.swift
//  PLDSpace
//
//  Created by Manuel Emilio Rodríguez de Viguri Fernández on 1/1/16.
//  Copyright © 2016 Manuel Emilio Rodríguez de Viguri Fernández. All rights reserved.
//

import UIKit
import Social

class FourthViewController: UIViewController {
    
    @IBOutlet weak var shareTwitterBTN: UIButton!
    @IBOutlet weak var shareFacebookBTN: UIButton!
    
    /*var statusBarColorSwitch : Int = 0*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cambiamos el color del statusbar para que se vea con el fondo negro
        /*if statusBarColorSwitch == 0 {
        UIApplication.sharedApplication().statusBarStyle = .LightContent;
        statusBarColorSwitch = 1;
        }*/
        
    }
    
    @IBAction func shareTwitterTapped(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            let twitterSheet:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterSheet.setInitialText("Hi! This guys are amazing! Check them out and RT. They really deserve!! #GoPLD #NewSpace #ThisIsRocketScience @PLD_Space")
            self.presentViewController(twitterSheet, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func shareFacebookTapped(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            let fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            self.presentViewController(fbShare, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
