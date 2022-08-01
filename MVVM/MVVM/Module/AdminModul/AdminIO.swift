//
//  AdminIO.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//


//для передачи данных
import UIKit

protocol AdminOutput: AnyObject {
    
    func showListStudent()
    
}

// с модуля передать данные в координатор
protocol AdminInput: AnyObject {} // инпут чтобы передать данные с координатора в модуль

