//
//  ViewController.swift
//  S_Diary
//
//  Created by 준현의 Macbook Pro on 2022/02/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var diaryList = [Diary]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //diaryList.append(contentsOf: Diary(content: "test", location: "test"))
        // Do any additional setup after loading the view.
    }

}
