//
//  ViewController.swift
//  FindDay
//
//  Created by user on 26.09.2021.
//

import UIKit

class ViewController: UIViewController {
   
    
    @IBOutlet weak var dateTF: UITextField!
    
    @IBOutlet weak var monthTF: UITextField!
    
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func findDay(_ sender: UIButton) {
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else
        { return }
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        if dateComponents.day! > 31 {
            dateTF.text = "Er"
        }
        dateComponents.month = Int(month)
        if dateComponents.month! > 12 {
            monthTF.text = "Er"}
        
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru)")
        dateFormatter.dateFormat = "EEEE"
        
       
        guard let date = calendar.date(from: dateComponents) else { return }

        let weekDay = dateFormatter.string(from: date)
        let weekDayCapitalized = weekDay.capitalized
        result.text = weekDayCapitalized
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
    




