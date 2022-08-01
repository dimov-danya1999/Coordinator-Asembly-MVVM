//
//  Coordinator.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

//отвечает за переходы экранов
import UIKit

class Coordinator {
    
    private let asembly: Asembly
    private var navigationController: UINavigationController?
    
    init(asembly: Asembly) {
        self.asembly = asembly
    }
    
    func start(window: UIWindow) {
        let firstViewController = asembly.makeAdmin(output: self)
        navigationController = UINavigationController(rootViewController: firstViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
extension Coordinator: AdminOutput {
    
    func showListStudent() {
        let ListStudentVC = asembly.makeListStudent(output: self)
        navigationController?.pushViewController(ListStudentVC, animated: true)
    }
}

extension Coordinator: ListStudentOutput {
    
}

