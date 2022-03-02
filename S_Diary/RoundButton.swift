//
//  RoundButton.swift
//  S_Diary
//
//  Created by 준현의 Macbook Pro on 2022/03/02.
//

import UIKit

class RoundButton: UIButton {
    @IBInspectable var isRound: Bool = false {
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 3
            }
        }
    }
}
