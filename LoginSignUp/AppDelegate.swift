//
//  AppDelegate.swift
//  LoginSignUp
//
//  Created by Mohamed Kelany on 6/6/18.
//  Copyright © 2018 Mohamed Kelany. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let loginController = LoginController()
        let controller = UINavigationController(rootViewController: loginController)
        window?.rootViewController = controller
        return true
    }


}

