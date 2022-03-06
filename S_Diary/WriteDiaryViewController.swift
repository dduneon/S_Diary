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
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapBegan(sender:))))
    }
    
    private func dateToString(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M월 d일 EEEE"
        formatter.locale = Locale(identifier: "ko_KR")
        return formatter.string(from: date)
    }
    
    @IBAction func tapSaveButton(_ sender: UIButton) {
        guard let content = contentsTextField.text else { return }
        
        let diary = Diary(date: Date(), content: content, location: "test")
        
        NotificationCenter.default.post(name: NSNotification.Name("Save"), object: diary)
    }
    
    @IBAction func tapFeelingButton(_ sender: UIButton) {

    }
    
    @objc func tapBegan(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            self.view.endEditing(true)
        }
        sender.cancelsTouchesInView = false
    }
}
