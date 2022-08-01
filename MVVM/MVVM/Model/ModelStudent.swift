//
//  ModelStudent.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import Foundation


struct ModelStudent {
    let id : String = UUID().uuidString
    let name: String
    let family: String
    
    let startDate: Date
    
    let evalution: [Evolution]
}
