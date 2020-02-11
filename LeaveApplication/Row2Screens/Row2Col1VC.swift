//
//  Row2Col1VC.swift
//  Ui Assignment
//
//  Created by Captain on 28/01/20.
//

import UIKit

class Row2Col1VC: UIViewController {

    @IBOutlet var signupview: UIView!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var signinView: UIView!
    
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
            case 0:
            signupview.isHidden = false
            fullnametxtfld.isHidden = false
            lastnametxtfld.isHidden = false
            emailtxtfld.isHidden = false
            passwordtxtfld.isHidden = false
            reenterpasswrdtxtfld.isHidden = false
            self.loadView()
            
           case 1:
            signinView.isHidden = false
            fullnametxtfld.isHidden = true
            passwordtxtfld.isHidden = true
            lastnametxtfld.isHidden = true
            emailtxtfld.isHidden = true
            reenterpasswrdtxtfld.isHidden = true
            createaccntbutton.isHidden = true
            signwithfbbttn.isHidden = true
    
            
        default:
            break;
        }
     }
    
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var signwithfbbttn: UIButton!
    @IBOutlet var createaccntbutton: UIButton!
    @IBOutlet var fullnametxtfld: UITextField!
    @IBOutlet var lastnametxtfld: UITextField!
    @IBOutlet var emailtxtfld: UITextField!
    @IBOutlet var passwordtxtfld: UITextField!
    @IBOutlet var reenterpasswrdtxtfld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signinView.isHidden = true
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        let titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        
       
        //segmentcontroloutlet.tintColor = UIColor.clear
        //segmentcontroloutlet.backgroundColor = UIColor.lightGray
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
