//
//  RemindersViewController.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation
import UIKit

class RemindersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ReminderService.shared.toggleCompleted(index: indexPath.row)
        self.tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ReminderService.shared.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell") as! ReminderCell
        
        let reminder = ReminderService.shared.getReminder(index: indexPath.row)
        
        cell.update(reminder: reminder)
        
        return cell
    }
    
    
    
}
