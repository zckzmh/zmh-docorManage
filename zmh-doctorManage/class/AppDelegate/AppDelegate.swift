//
//  AppDelegate.swift
//  zmh-doctorManage
//
//  Created by minghanzhao on 16/3/4.
//  Copyright © 2016年 minghanzhao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let mainVc = MainViewController()
        
        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.rootViewController = mainVc
        self.window!.makeKeyAndVisible()
        
        
        return true
    }

    


}

