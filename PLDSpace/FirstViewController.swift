//
//  FirstViewController.swift
//  PLDSpace
//
//  Created by Manuel Emilio Rodríguez de Viguri Fernández on 1/1/16.
//  Copyright © 2016 Manuel Emilio Rodríguez de Viguri Fernández. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var webViewYoutubeIntro: UIWebView!
    
    var statusBarColorSwitch : Int = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cambiamos el color del statusbar para que se vea con el fondo negro
        if statusBarColorSwitch == 0 {
            UIApplication.sharedApplication().statusBarStyle = .LightContent;
            statusBarColorSwitch = 1;
        }
        
        
        let myURL : NSURL = NSURL(string: "https://www.youtube.com/embed/b2X7E8Ly-Cs")!;
        let myURLRequest : NSURLRequest = NSURLRequest(URL: myURL);
        self.webViewYoutubeIntro.loadRequest(myURLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*class PLD_presentation1 : UILabel {
        override func layoutSubviews() {
        // 1. Get the label to set its frame correctly:
        super.layoutSubviews()
        
        // 2. Now the frame is set we can get the correct width
        // and set it to the preferredMaxLayoutWidth.
        self.preferredMaxLayoutWidth = self.frame.width
    }*/
    /*para recuperar el color original al salir de la vista
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if statusBarColorSwitch == 1 {
            UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
            statusBarColorSwitch == 0
        }
        
    }*/


}