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
    
    @IBOutlet weak var emotionFirstLabel: UILabel!
    
    let titleList = ["행복해", "좋아해", "사랑해", "분노해", "당황해", "졸려", "무서워", "지루해", "슬퍼"]
    var clickCountList = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        
        designListBarButotnItem(buttonItem: listBarButtonItem, itemColor: .black)
        designEmotionImgList(imgList: emotionImgList)
        designEmotionTitleList(labelList: emotionTitleLabels, titleList: titleList)
        
        //직접 추가한 이미지 사용
        //let image = UIImage(named: "")?.withRenderingMode(.alwaysOriginal)
        //emotionFirstButton.setImage(image, for: .normal)
        
        // 애플의 시스템 심볼 사용
        //let systemImage = UIImage(systemName: <#T##String#>)
        
    

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
        print(sender.tag)
        
        showAlertController()
    }
    
    func showAlertController() {
        //1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메세지가 들어갑니다.", preferredStyle: .actionSheet)
        
        //2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소버튼입니다", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        //3. 1번+2번 (추가한 순서대로 보임)
        alert.addAction(ok)
        alert.addAction(cancel)
        alert.addAction(web)
//        alert.addAction(copy)
        
        //4. present : 띄우기
        present(alert, animated: true, completion: nil)
    }
    
    
}
