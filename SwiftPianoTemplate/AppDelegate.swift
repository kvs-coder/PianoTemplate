//
//  AppDelegate.swift
//  SwiftPianoTemplate
//
//  Created by Victor Kachalov on 01.03.18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = PianoViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
