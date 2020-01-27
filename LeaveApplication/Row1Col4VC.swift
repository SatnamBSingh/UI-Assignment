//
//  Row1Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 27/01/20.
//

import UIKit

class Row1Col4VC: UIViewController {
   // var isHighLighted:Bool = false

    
    @IBOutlet var backview: UIView!
    @IBAction func backbutton(_ sender: Any) {
    navigationController?.popViewController(animated: true)
    }
    @IBAction func signupbutton(_ sender: Any) {
    }
    @IBOutlet var signupbtnoutlet: UIButton!
    @IBOutlet var signinbtnoutlet: UIButton!
    @IBAction func signinbutton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
navigationController?.navigationBar.isHidden = true
//        buttonClicked(sender: signupbtnoutlet)
//        buttonClicked(sender: signinbtnoutlet)
        // Do any additional setup after loading the view.
    }
//        func buttonClicked(sender:UIButton)
//        {
//                if isHighLighted == false{
//                    sender.isHighlighted = true;
//                    isHighLighted = true
//                }else{
//                    sender.isHighlighted = false;
//                    isHighLighted = false
//                }
//
//        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
