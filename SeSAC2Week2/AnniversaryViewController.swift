//
//  AnniversaryViewController.swift
//  SeSAC2Week2
//
//  Created by 김태현 on 2022/07/13.
//

import UIKit


class AnniversaryViewController: UIViewController {

    
    
    @IBOutlet var dateLabelList: [UILabel]!
    @IBOutlet var dateImgList: [UIImageView]!
    
    @IBOutlet weak var anniversaryPickerView: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designDateLabel()
        designDateImg()
    }
    
    
    
    func designDateLabel() {
        for i in 0..<dateLabelList.count {
            dateLabelList[i].text = "D+\(i+1)00"
            dateLabelList[i].textColor = .white
            dateLabelList[i].font = UIFont(name: "System", size: 20)
        }
    }
    
    func designDateImg() {
        for i in 0..<dateImgList.count {
            dateImgList[i].image = UIImage(named: "date\(i+1)00")
            dateImgList[i].contentMode = .scaleAspectFill
            
        }
    }
    
    
    //@available(iOS 14.0, *)
    @IBAction func changedDatePicker(_ sender: UIDatePicker) {
        print(sender)
    }
    
    
    
}
