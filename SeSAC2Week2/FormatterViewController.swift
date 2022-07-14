//
//  FormatterViewController.swift
//  SeSAC2Week2
//
//  Created by 김태현 on 2022/07/14.
//

import UIKit

class FormatterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd hh:mm:ss)
        let format = DateFormatter()
        format.dateFormat = "M월 d일, yy년"
        
        //format.locale
        
        //어느 시각을 불러와서 위 형식으로 담을께
        let result = format.string(from: Date()) //현재시간
        print(result, Date())
        
        let word = "3월 2일, 19년"
        let dateResult = format.date(from: word)
        
        print(dateResult)
        
    }
    
}
