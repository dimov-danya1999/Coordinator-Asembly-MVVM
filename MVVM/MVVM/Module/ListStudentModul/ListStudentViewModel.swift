//
//  AdminViewModel.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit

protocol ListStudentViewModelDelegate {
    
    var tableData: [(section: String, rows: [StudentTableViewModel])] { get }
    
    func viewDidLoad()
}

class ListStudentViewModel {
    
    weak var delegate: ListStudentViewControllerDelegate?
    private weak var delegateListOutput: ListStudentOutput?
    private let useCase: StudentUseCassing?
    
    var tableData = [(section: String, rows: [StudentTableViewModel])]()
    
    init(output: ListStudentOutput, useCase: StudentUseCassing) {
        self.delegateListOutput = output
        self.useCase = useCase
    }
    
}

extension ListStudentViewModel: ListStudentViewModelDelegate {
    
    //вызываем данные
    func viewDidLoad() {
        tableData = Dictionary(grouping: (useCase?.getAllStudent())!) { $0.family.first ?? "*" }.compactMap {
            (section: String ($0.key), rows: $0.value.compactMap { student in
                let diff = Calendar.current.dateComponents([.year], from: student.startDate, to: Date()).day ?? 0
              return StudentTableViewModel(
                titleLabel: "\(student.name) \(student.family)",
                subTitleLabel: "курс:  \(diff + 1)"
                )
            })
        }
        tableData = tableData.sorted {$0.section < $1.section}
    }
}

