//
//  AdminViewModel.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit

protocol AdminViewModelDelegate {
    func studentListButtonAction()
    func studentEvalutionosButtonAction()
    func studentVisitButtonAction()
}

class AdminViewModel {
    
    weak var delegate: AdminViewControllerDelegate?
    private weak var delegateAdminOutput: AdminOutput?
    
    init(output: AdminOutput) {
        self.delegateAdminOutput = output
    }
    
}

extension AdminViewModel: AdminViewModelDelegate {
    
    func studentListButtonAction() {
        delegateAdminOutput?.showListStudent()
    }
    
    func studentEvalutionosButtonAction() {
        print("")
    }
    
    func studentVisitButtonAction() {
        print("")
    }
    
    
}
