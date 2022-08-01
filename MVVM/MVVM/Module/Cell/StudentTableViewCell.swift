//
//  StudentTableViewCell.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit
import SnapKit

class StudentTableViewCell: UITableViewCell {
    
    var model: StudentTableViewModel?

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   private func setupUI() {
       let stack = UIStackView(view: [titleLabel, subTitleLabel], axis: .horizontal, spacing: 20)
       stack.translatesAutoresizingMaskIntoConstraints = false
       addSubview(stack)
       stack.snp.makeConstraints { make in
           make.left.equalTo(15)
           make.width.equalTo(200)
           make.height.equalTo(70)
           make.center.equalToSuperview()
       }
    }
    
    func setup(with model: StudentTableViewModel) {
        self.model = model
        titleLabel.text = model.titleLabel
        subTitleLabel.text = model.subTitleLabel
    }
    
}
