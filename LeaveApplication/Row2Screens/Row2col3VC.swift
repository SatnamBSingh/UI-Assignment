//
//  Row2col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 30/01/20.
//

import UIKit
import XLPagerTabStrip
class Row2col3VC: ButtonBarPagerTabStripViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    @IBOutlet weak var buttonbarview: ButtonBarView!
    override func viewDidLoad() {
        settings.style.selectedBarHeight = 5
        settings.style.selectedBarBackgroundColor = UIColor.white
        settings.style.buttonBarBackgroundColor = #colorLiteral(red: 0.9915205836, green: 0.3439395428, blue: 0.1324428618, alpha: 1)
        settings.style.buttonBarItemTitleColor = UIColor.white
        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        super.viewDidLoad()
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
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Row2col3SignUp") as! Row2col3SignUp
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Row2col3SignIn") as! Row2col3SignIn
        
        return [vc1,vc2]
    }
}
