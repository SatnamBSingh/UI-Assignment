//
//  Row2col3SignIn.swift
//  Ui Assignment
//
//  Created by Captain on 30/01/20.
//

import UIKit
import XLPagerTabStrip
class Row2col3SignIn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension Row2col3SignIn: IndicatorInfoProvider{
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "SIGN IN")
    }
    
    
}
