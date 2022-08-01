//
//  Evolution.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import Foundation

struct Evolution {
    let id : String = UUID().uuidString
    
    let lesson: Lesson
    let mark: Float
}
