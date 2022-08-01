//
//  AdminViewController.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit
import SnapKit

private enum  Parametrs {
    static var listTitleStudent: String { "Список студентов" }
    static var studentEvalutionosTitle: String { "Оценки студентов" }
    static var studentVisitTitle: String { "Расписание студентов" }
    static var colorButton: UIColor {.black}
    static var bacgroundColor: UIColor {.white}
    static var bacgroundButton: UIColor {.gray}
}

protocol AdminViewControllerDelegate: AnyObject {
    
}

class AdminViewController: UIViewController {
    
    private let viewModel: AdminViewModelDelegate
    
    private lazy var studentListButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    private lazy var studentEvalutionosButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    private lazy var studentVisitButton: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()
    
    
    init(viewModel: AdminViewModelDelegate) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAI()
        setupButton()
        autolaoutButton()
    }
    private func setupAI() {
        view.backgroundColor = Parametrs.bacgroundColor
    }
    
    private func setupButton() {
        constraintButton(studentListButton, title: Parametrs.listTitleStudent, action: #selector(studentListButtonAction), backgroundColor: Parametrs.bacgroundButton)
        constraintButton(studentEvalutionosButton, title: Parametrs.studentEvalutionosTitle, action: #selector(studentEvalutionosButtonAction), backgroundColor: Parametrs.bacgroundButton)
        constraintButton(studentVisitButton, title: Parametrs.studentVisitTitle, action: #selector(studentVisitButtonAction), backgroundColor: Parametrs.bacgroundButton)
    }
    
    private func constraintButton(_ uiButton: UIButton, title: String, action: Selector, backgroundColor: UIColor) {
        view.addSubview(uiButton)
        uiButton.setTitle(title, for: .normal)
        uiButton.addTarget(self, action: action, for: .touchUpInside)
        uiButton.setTitleColor(Parametrs.colorButton, for: .normal)
        uiButton.backgroundColor = .gray
    }
    
    private func autolaoutButton() {
        let stack = UIStackView(view: [studentListButton, studentEvalutionosButton, studentVisitButton ], axis: .vertical, spacing: 30)
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.snp.makeConstraints { make in
            make.center.equalTo(view.center)
            make.width.equalTo(400)
            make.height.equalTo(150)
        }
    }
    
    @objc func studentListButtonAction() {
        viewModel.studentListButtonAction()
    }
    
    @objc func studentEvalutionosButtonAction() {
        viewModel.studentEvalutionosButtonAction()
    }
    
    @objc func studentVisitButtonAction() {
        viewModel.studentVisitButtonAction()
    }
    
}

extension AdminViewController: AdminViewControllerDelegate {
    
}
