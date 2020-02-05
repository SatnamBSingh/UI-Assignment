//
//  Row2col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 30/01/20.
//

import UIKit
import CarbonKit
class Row2col3VC: UIViewController, CarbonTabSwipeNavigationDelegate {
   
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        switch index {
        case 0:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row2col3SignUp") as! Row2col3SignUp
        case 1:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row2col3SignIn") as! Row2col3SignIn
        default:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row2col3SignIn") as! Row2col3SignIn
            
        }
    }
    

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        let displays = ["SIGN UP", "SIGN IN"]
        let carbonswipenavigation = CarbonTabSwipeNavigation(items: displays, delegate: self)
        carbonswipenavigation.insert(intoRootViewController: self)
        carbonswipenavigation.setTabBarHeight(70)
        //below for bar color&Height
        carbonswipenavigation.setIndicatorColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        carbonswipenavigation.setIndicatorHeight(7)
        carbonswipenavigation.toolbar.barTintColor = #colorLiteral(red: 0.9915205836, green: 0.3439395428, blue: 0.1324428618, alpha: 1)
        carbonswipenavigation.toolbar.isTranslucent = false
        // carbonswipenavigation.toolbar.barPosition
        // carbonswipenavigation.toolbar.backgroundColor = UIColor.clear
        carbonswipenavigation.carbonSegmentedControl?.setWidth(200, forSegmentAt: 0)
        carbonswipenavigation.carbonSegmentedControl?.setWidth(200, forSegmentAt: 1)
        //below for unselected text the color is white
        carbonswipenavigation.setNormalColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        carbonswipenavigation.setSelectedColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        carbonswipenavigation.toolbar.backgroundImage(forToolbarPosition: .any, barMetrics: .default)
        navigationController?.navigationBar.isHidden  = true
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
