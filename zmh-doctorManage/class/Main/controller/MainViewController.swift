//
//  MainViewController.swift
//  zmh-doctorManage
//
//  Created by minghanzhao on 16/3/4.
//  Copyright © 2016年 minghanzhao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

//    let homeVc      = HomePageViewController()
//    let doctorVc    = DoctorInfoViewController()
//    let individalVc = IndividalSettingViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeNav       = UINavigationController.init(rootViewController: homeVc)
        let doctorNav     = UINavigationController.init(rootViewController: doctorVc)
        let individalNav  = UINavigationController.init(rootViewController: individalVc)
        self.viewControllers = [homeNav,doctorNav,individalNav]
        self.setupTabBar()
        
        
    }

    func setupTabBar(){
        let tabBar = self.tabBar
        tabBar.tintColor = UIColor(red:94/255.0, green:222/255.0,blue:226/255.0,alpha:1.0)
        tabBar.barTintColor = UIColor.whiteColor()
        let tabBarItem1 = tabBar.items![0]
        let tabBarItem2 = tabBar.items![1]
        let tabBarItem3 = tabBar.items![2]
        
        tabBarItem1.image = UIImage(named:"shouye")
        tabBarItem1.selectedImage = UIImage(named: "mydoctor_select")
        tabBarItem2.image = UIImage(named: "mydoctor")
        tabBarItem2.selectedImage = UIImage(named: "mydoctor_select")
        tabBarItem3.image = UIImage(named: "wode")
        tabBarItem3.selectedImage = UIImage(named: "wode_select")
        
        tabBarItem1.title = "首页"
        tabBarItem2.title = "医生"
        tabBarItem3.title = "我的"
        
        
    }
    
    lazy var homeVc:HomePageViewController = {
        let home = HomePageViewController()
        home.title = "首页"
        return home
    }()
    lazy var doctorVc:DoctorInfoViewController = {
        let doctor = DoctorInfoViewController()
//        doctor.title = "首页"
        return doctor
    }()
    lazy var individalVc:IndividalSettingViewController = {
        let individal = IndividalSettingViewController()
        individal.title = "我"
        return individal
    }()

}
