//
//  NewReminderViewController.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation
import UIKit

class NewReminderViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var completedSwitch: UISwitch!
    
    
    @IBAction func saveButtonDidTapped(_ sender: UIButton) {
        
        let reminder = Reminder(title: titleTextField.text!, data: datePicker.date, isCompleted: completedSwitch.isOn)
        
        ReminderService.shared.create(reminder: reminder)
        
        navigationController!.popViewController(animated: true)
    }
}
