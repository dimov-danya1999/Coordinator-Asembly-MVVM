//
//  StudentUseCassing.swift
//  MVVM
//
//  Created by mac on 01.08.2022.
//

import UIKit

protocol StudentUseCassingDelegate {
    func getAllStudent() -> [ModelStudent]
}

class StudentUseCassing {
    
    init() {
        
    }
}

extension StudentUseCassing: StudentUseCassingDelegate {
    //метод который возвращает список наших студентов
    
    func getAllStudent() -> [ModelStudent] {
        
        let mathematik = Lesson(title: "Математика")
        let russia = Lesson(title: "Русский язык")
        let programm = Lesson(title: "Информатика")
        
        return [
            
            ModelStudent(name: "Даниил", family: "Димов", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 5),
                Evolution(lesson: russia, mark: 5),
                Evolution(lesson: programm, mark: 5),
            ]),
            ModelStudent(name: "Даниил", family: "Першиков", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Софья", family: "Димова", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Александр", family: "Петров", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Денис", family: "Голубев", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Михаил", family: "Лазарев", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Сергей", family: "Кузьмичев", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ]),
            ModelStudent(name: "Сергей", family: "Лосев", startDate: Date(), evalution: [
                Evolution(lesson: mathematik, mark: 3),
                Evolution(lesson: russia, mark: 3),
                Evolution(lesson: programm, mark: 3),
            ])
            
        ]
    }
}
