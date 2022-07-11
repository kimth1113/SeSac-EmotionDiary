//
//  ImotionDairyViewController.swift
//  SeSAC2Week2
//
//  Created by 김태현 on 2022/07/11.
//

import UIKit

class ImotionDairyViewController: UIViewController {

    @IBOutlet weak var listBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var barItem: UINavigationItem!
    
    @IBOutlet var emotionImgList: [UIImageView]!
    @IBOutlet var emotionTitleLabels: [UILabel]!
    
    let titleList = ["행복해", "좋아해", "사랑해", "분노해", "당황해", "졸려", "무서워", "지루해", "슬퍼"]
    var clickCountList = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        
        designListBarButotnItem(buttonItem: listBarButtonItem, itemColor: .black)
        designEmotionImgList(imgList: emotionImgList)
        designEmotionTitleList(labelList: emotionTitleLabels, titleList: titleList)
    }
    
    func designListBarButotnItem(buttonItem: UIBarButtonItem, itemColor: UIColor) {
        buttonItem.tintColor = itemColor
    }
    
    func designEmotionImgList(imgList: [UIImageView]) {
        for i in 0...imgList.count-1 {
            imgList[i].image = UIImage(named: "sesac_slime\(i+1)")
        }
    }
    
    func designEmotionTitleList(labelList: [UILabel], titleList: [String]) {
        for i in 0...labelList.count-1 {
            labelList[i].text = titleList[i] + " " + String(clickCountList[i])
            labelList[i].textAlignment = .center
        }
    }
    @IBAction func emotionImgClicked(_ sender: UIButton) {
        let idx = Int(sender.currentTitle!)! - 1
        clickCountList[idx] += 1
        emotionTitleLabels[idx].text = titleList[idx] + " " + String(clickCountList[idx])
    }
}
