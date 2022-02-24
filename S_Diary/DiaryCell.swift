//
//  DiaryCell.swift
//  S_Diary
//
//  Created by 준현의 Macbook Pro on 2022/02/24.
//

import UIKit

class DiaryCell: UICollectionViewCell {
    @IBOutlet weak var feelingImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var uploadedImage: UIImageView!
    @IBOutlet weak var contentsLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.contentView.layer.cornerRadius = 3.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.gray.cgColor
    }
}
