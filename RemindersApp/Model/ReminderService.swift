//
//  ReminderService.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation

class ReminderService {
    
    static let shared = ReminderService()
    
    private var reminders = [Reminder]()
    
    //create
    func create(reminder: Reminder) {
        
        var indexToInsert: Int?
        
        for (index, element) in reminders.enumerated() {
            if reminder.date.timeIntervalSince1970 < element.date.timeIntervalSince1970 {
                indexToInsert = index
                break
            }
        }
        if let indexToInsert = indexToInsert {
            reminders.insert(reminder, at: indexToInsert)
        } else {
            reminders.append(reminder)
        }
    }

    //update
    func update(reminder: Reminder, index: Int){
        reminders[index] = reminder
    }
    
    //get number of reminder
    
    func getCount() -> Int {
        return reminders.count
    }
    
    // get a sepecific reminder
    func getReminder(index: Int) -> Reminder {
        return reminders[index]
    }
    
    // toggle completed status of a reminder
    func toggleCompleted(index: Int) {
        let reminder = getReminder(index: index)
        reminder.isCompleted = !reminder.isCompleted
    }
    
    //get the list of reminders
    
    func getReminders() -> [Reminder] {
        return reminders
    }
    
    //delete a reminder
    func delete(index: Int) {
        reminders.remove(at: index)
    }
    
    
    // get the favorite reminder
    func getFavoritedReminder() -> Reminder? {
        return reminders.first
    }
    
    
}
