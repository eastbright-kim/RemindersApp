//
//  ReminderCell.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation
import UIKit

class ReminderCell: UITableViewCell {
    
    @IBOutlet weak var isCompletedView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    func update(reminder: Reminder) {
        titleLabel?.text = reminder.title
        
        isCompletedView.layer.borderColor = UIColor.lightGray.cgColor
        isCompletedView.layer.cornerRadius = isCompletedView.frame.size.width / 2.0
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy hh:mma"
        dateLabel.text = dateFormatter.string(from: reminder.date)
        
        if reminder.isCompleted {
            isCompletedView.backgroundColor = UIColor.green
            isCompletedView.layer.borderWidth = 0.0
        } else {
            isCompletedView.backgroundColor = .white
            isCompletedView.layer.borderWidth = 2.0
        }
        
    }
    
    
}
