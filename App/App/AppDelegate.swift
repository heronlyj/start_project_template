//
//  AppDelegate.swift
//  App
//
//  Created by YJ Li on 2021/12/23.
//

import UIKit

import Flutter
import flutter_boost

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let rootNavigationController = UINavigationController(rootViewController: ViewController())
        rootNavigationController.navigationBar.isHidden = true
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()
        
        let boostDelegate = BoostDelegate()
        boostDelegate.navigationController = rootNavigationController
        
        FlutterBoost.instance().setup(application, delegate: boostDelegate) { engine in }
        
        return true
    }
}
