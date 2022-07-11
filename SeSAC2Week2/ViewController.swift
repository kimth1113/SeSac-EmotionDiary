//
//  ViewController.swift
//  SeSAC2Week2
//
//  Created by 김태현 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orangeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orangeView.layer.maskedCorners = [.layerMaxXMinYCorner]
        orangeView.layer.cornerRadius = orangeView.frame.height / 2
        
        //orangeView.layer.shadowColor
        //orangeView.clipsToBounds = false
        //orangeView.isUserInteractionEnabled
        
        //clipsToBounds vs cornerRadius vs shadow
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print("sliderChanged")
    }
    
    @IBAction func dataValueChanged(_ sender: UIDatePicker) {
        print("oh")
    }
    @IBAction func textFieldChanged(_ sender: UITextField) {
        print("dk")
    }
}

