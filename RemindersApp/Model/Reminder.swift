//
//  Reminder.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation

class Reminder {
    
    let title: String
    let date: Date
    var isCompleted: Bool
    
    init(title: String, data: Date, isCompleted: Bool){
        self.title = title
        self.date = data
        self.isCompleted = isCompleted
    }
    
}
