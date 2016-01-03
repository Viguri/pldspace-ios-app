//
//  ThirdViewController.swift
//  PLDSpace
//
//  Created by Manuel Emilio Rodríguez de Viguri Fernández on 1/1/16.
//  Copyright © 2016 Manuel Emilio Rodríguez de Viguri Fernández. All rights reserved.
//

import UIKit

class Arion2VC: UIViewController {
    
    //@IBOutlet weak var webViewYoutubeIntro: UIWebView!

    
    /*var statusBarColorSwitch : Int = 0*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cambiamos el color del statusbar para que se vea con el fondo negro
        /*if statusBarColorSwitch == 0 {
        UIApplication.sharedApplication().statusBarStyle = .LightContent;
        statusBarColorSwitch = 1;
        }*/
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*para recuperar el color original al salir de la vista
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        if statusBarColorSwitch == 1 {
            UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
            statusBarColorSwitch == 0
        }
        
    }*/
}
