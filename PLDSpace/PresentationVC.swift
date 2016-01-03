//
//  FirstViewController.swift
//  PLDSpace
//
//  Created by Manuel Emilio Rodríguez de Viguri Fernández on 1/1/16.
//  Copyright © 2016 Manuel Emilio Rodríguez de Viguri Fernández. All rights reserved.
//

import UIKit

class PresentationVC: UIViewController {

    @IBOutlet weak var webViewYoutubeIntro: UIWebView!
    @IBOutlet weak var PLD_logo: UIImageView!

    /*var statusBarColorSwitch : Int = 0*/
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cambiamos el color del statusbar para que se vea con el fondo negro
        /*if statusBarColorSwitch == 0 {
            UIApplication.sharedApplication().statusBarStyle = .LightContent;
            statusBarColorSwitch = 1;
        }*/
        /*self.view.backgroundColor = UIColor(patternImage: UIImage(named: "CHTakT5UYAIUzVx.jpg")!)*/
        
        let myURL : NSURL = NSURL(string: "https://www.youtube.com/embed/b2X7E8Ly-Cs")!;
        let myURLRequest : NSURLRequest = NSURLRequest(URL: myURL);
        self.webViewYoutubeIntro.loadRequest(myURLRequest)
        
        self.roundingUIView(self.PLD_logo, cornerRadiusParam: 10)
        //self.roundingUIView(self.myUIViewBackground, cornerRadiusParam: 20)
        
    }
    
    private func roundingUIView(let aView: UIView!, let cornerRadiusParam: CGFloat!) {
        aView.clipsToBounds = true
        aView.layer.cornerRadius = cornerRadiusParam
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}