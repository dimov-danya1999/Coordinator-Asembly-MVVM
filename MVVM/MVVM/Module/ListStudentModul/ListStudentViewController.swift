//
//  AdminViewController.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit
import SnapKit

private enum  Parametrs {
    static var tableViewCellIndetificator: String { "tableViewCellIndetificator" }
}

protocol ListStudentViewControllerDelegate: AnyObject {
    
}

class ListStudentViewController: UIViewController {
    
    private lazy var tableListStudent: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        return tableView
    }()
    
    private let viewModel: ListStudentViewModelDelegate
    
    init(viewModel: ListStudentViewModelDelegate) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Список студентов"
        tableView()
        viewModel.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableListStudent.frame = view.bounds
    }
    
    private func tableView() {
        view.addSubview(tableListStudent)
        tableListStudent.frame = view.bounds
        tableListStudent.rowHeight = UITableView.automaticDimension
        tableListStudent.delegate = self
        tableListStudent.dataSource = self
        tableListStudent.register(StudentTableViewCell.self, forCellReuseIdentifier: Parametrs.tableViewCellIndetificator)
    }
  
}

extension ListStudentViewController: ListStudentViewControllerDelegate {
    
}

extension ListStudentViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        viewModel.tableData[section].section
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.tableData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.tableData[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableListStudent.dequeueReusableCell(withIdentifier: Parametrs.tableViewCellIndetificator, for: indexPath) as? StudentTableViewCell else { return UITableViewCell() }
        cell.setup(with: viewModel.tableData[indexPath.section].rows[indexPath.row])
        return cell
    }
    
    
}
