//
//  WriteDiaryViewController.swift
//  S_Diary
//
//  Created by 준현의 Macbook Pro on 2022/02/24.
//

import UIKit


class WriteDiaryViewController: UIViewController {
    @IBOutlet weak var contentsTextField: UITextField!
    @IBOutlet weak var todayLabel: UILabel!
    @IBOutlet weak var feelButton1: UIButton!
    @IBOutlet weak var feelButton2: UIButton!
    @IBOutlet weak var feelButton3: UIButton!
    @IBOutlet weak var feelButton4: UIButton!
    @IBOutlet weak var feelButton5: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        todayLabel.text = dateToString(date: Date())
    }
    
    private func dateToString(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M월 d일 EEEE"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        guard let content = contentsTextField.text else { return }
        
        var diary = Diary(date: Date(), content: content, location: "test")
        
        NotificationCenter.default.post(name: NSNotification.Name("Save"), object: diary)
    }
    
    @IBAction func tapCancelButton(_ sender: UIButton) {
    }
    
    @IBAction func tapFeelingButton(_ sender: Any) {
    }
    
}
