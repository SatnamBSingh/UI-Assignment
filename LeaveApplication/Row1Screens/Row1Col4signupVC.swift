//
//  Row1Col4signupVC.swift
//  Ui Assignment
//
//  Created by Captain on 29/01/20.
//

import UIKit
import XLPagerTabStrip

class Row1Col4signupVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension Row1Col4signupVC: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "SIGN UP")
    }
    
    
}
