//
//  Row1Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 27/01/20.
//

import UIKit
import XLPagerTabStrip

class Row1Col4VC: ButtonBarPagerTabStripViewController {
   
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        settings.style.selectedBarHeight = 5
        settings.style.selectedBarBackgroundColor = UIColor.white
        settings.style.buttonBarBackgroundColor = #colorLiteral(red: 0.9915205836, green: 0.3439395428, blue: 0.1324428618, alpha: 1)
        settings.style.buttonBarItemTitleColor = UIColor.white
        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        super.viewDidLoad()
         navigationController?.navigationBar.isHidden = true
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {

        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Row1Col4signupVC") as! Row1Col4signupVC
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Row1col4_2_VC") as! Row1col4_2_VC

        return [vc1,vc2]
    }
    
}
