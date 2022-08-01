//
//  SceneDelegate.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var asembly = Asembly()
    private lazy var coordinator = Coordinator(asembly: asembly)
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        coordinator.start(window: window)
        self.window = window
        window.makeKeyAndVisible()
    }
    
}
