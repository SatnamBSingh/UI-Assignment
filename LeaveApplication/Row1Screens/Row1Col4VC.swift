//
//  Row1Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 27/01/20.
//

import UIKit
import CarbonKit
class Row1Col4VC: UIViewController, CarbonTabSwipeNavigationDelegate {
    
    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        switch index {
        case 0:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row1Col4signupVC") as! Row1Col4signupVC
        case 1:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row1col4_2_VC") as! Row1col4_2_VC
        default:
            return self.storyboard?.instantiateViewController(withIdentifier: "Row1col4_2_VC") as! Row1col4_2_VC

        }
    }
    func barPosition(for carbonTabSwipeNavigation: CarbonTabSwipeNavigation) -> UIBarPosition {
        return UIBarPosition.top
    }
    

    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var containerView: UIView!
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
       // self.navigationController!.navigationBar.barTintColor = color
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        
        let displays = ["SIGN UP", "SIGN IN"]
        let carbonswipenavigation = CarbonTabSwipeNavigation(items: displays, delegate: self)
        carbonswipenavigation.insert(intoRootViewController: self, andTargetView: containerView)
        carbonswipenavigation.setTabBarHeight(50)
        //below for bar color&Height
        carbonswipenavigation.setIndicatorColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        carbonswipenavigation.setIndicatorHeight(3)
        carbonswipenavigation.toolbar.barTintColor = #colorLiteral(red: 0.9915205836, green: 0.3439395428, blue: 0.1324428618, alpha: 1)
        carbonswipenavigation.toolbar.isTranslucent = false
       // carbonswipenavigation.toolbar.barPosition
       // carbonswipenavigation.toolbar.backgroundColor = UIColor.clear
        carbonswipenavigation.carbonSegmentedControl?.setWidth(190, forSegmentAt: 0)
        carbonswipenavigation.carbonSegmentedControl?.setWidth(190, forSegmentAt: 1)
        //below for unselected text the color is white
        carbonswipenavigation.setNormalColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        carbonswipenavigation.setSelectedColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        carbonswipenavigation.toolbar.backgroundImage(forToolbarPosition: .any, barMetrics: .default)
        //self.containerView = carbonswipenavigation.view

         navigationController?.navigationBar.isHidden = true
    }

   
}
