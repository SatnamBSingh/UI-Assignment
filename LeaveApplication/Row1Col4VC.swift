//
//  Row1Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 27/01/20.
//

import UIKit

class Row1Col4VC: UIViewController {
   // var isHighLighted:Bool = false
    
    
    @IBOutlet var backview2: UIView!
    @IBOutlet var backview: UIView!
    @IBAction func backbutton(_ sender: Any) {
    navigationController?.popViewController(animated: true)
    }
    @IBAction func signupbutton(_ sender: Any) {
        backview.isHidden = false
        backview2.isHidden = true
    }
    @IBOutlet var signupbtnoutlet: UIButton!
    @IBOutlet var signinbtnoutlet: UIButton!
    @IBAction func signinbutton(_ sender: Any) {
        backview2.isHidden = false
        //backview.isHidden = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
       // backview2.isHidden = true
//        let tabbar1 = UITabBar()
//        view.addSubview(tabbar1)
//        tabbar1.translatesAutoresizingMaskIntoConstraints = false
//        tabbar1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0.0).isActive = true
//        tabbar1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0.0).isActive = true
//        tabbar1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
//        let signup = UITabBarItem(title: "SIGN UP", image: nil, tag: 100)
//         let signin = UITabBarItem(title: "SIGN IN", image: nil, tag: 100)
//        tabbar1.setItems([signup, signin], animated: false)
//        tabbar1.backgroundColor = UIColor.orange
//        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Arial", size: 15)!], for: .normal)
//       // FF6811
//        tabbar1.backgroundColor = UIColor(red: 255, green: 104, blue: 17, alpha: 0)
    
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
