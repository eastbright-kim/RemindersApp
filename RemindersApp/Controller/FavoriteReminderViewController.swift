//
//  FavoriteReminderViewController.swift
//  RemindersApp
//
//  Created by 김동환 on 2021/02/24.
//

import Foundation
import UIKit

class FavoriteReminderViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let favoriteReminder = ReminderService.shared.getFavoritedReminder() {
            titleLabel.text = favoriteReminder.title
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM/dd/yy hh:mmp"
            
            dateLabel.text = dateFormatter.string(from: favoriteReminder.date)
        }
    }
}
