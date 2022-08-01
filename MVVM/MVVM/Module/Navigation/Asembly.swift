//
//  Asembly.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

//отвечает за сборку модулей
import UIKit

class Asembly {
    
    func makeStudent() -> StudentUseCassing {
        StudentUseCassing()
    }
    
    func makeAdmin(output: AdminOutput) -> UIViewController {
        let viewModel = AdminViewModel(output: output)
        let vc = AdminViewController.init(viewModel: viewModel)
        viewModel.delegate = vc
        return vc
    }
    
    func makeListStudent(output: ListStudentOutput) -> UIViewController {
        let viewModel = ListStudentViewModel(output: output, useCase: makeStudent())
        let vc = ListStudentViewController.init(viewModel: viewModel)
        viewModel.delegate = vc
        return vc
    }

}

