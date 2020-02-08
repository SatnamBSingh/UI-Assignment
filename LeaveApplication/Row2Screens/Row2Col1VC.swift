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
            fullnametxtfld.isHidden = true
            passwordtxtfld.isHidden = true
            lastnametxtfld.isHidden = true
            emailtxtfld.isHidden = true
            reenterpasswrdtxtfld.isHidden = true
            createaccntbutton.isHidden = true
            signwithfbbttn.isHidden = true
            
            let sampleTextField =  UITextField(frame: CGRect(x: 24, y: 300, width: 327, height: 44))
            sampleTextField.placeholder = "Fullname"
            sampleTextField.backgroundColor = UIColor.clear
            sampleTextField.font = UIFont.systemFont(ofSize: 14)
            sampleTextField.borderStyle = UITextField.BorderStyle.none
            sampleTextField.backgroundColor = #colorLiteral(red: 0.9276727438, green: 0.9278281331, blue: 0.9276522994, alpha: 1)
            self.view.addSubview(sampleTextField)

            let paswordTextField =  UITextField(frame: CGRect(x: 24, y: 350, width: 327, height: 44))
            paswordTextField.placeholder = "Password"
            paswordTextField.backgroundColor = #colorLiteral(red: 0.9276727438, green: 0.9278281331, blue: 0.9276522994, alpha: 1)
            paswordTextField.font = UIFont.systemFont(ofSize: 14)
            paswordTextField.borderStyle = UITextField.BorderStyle.none
            self.view.addSubview(paswordTextField)

            let signinbutton = UIButton(frame: CGRect(x: 24, y: 420, width: 327, height: 44))
            signinbutton.backgroundColor = #colorLiteral(red: 1, green: 0.3529317379, blue: 0, alpha: 1)
            signinbutton.setTitle("Sign In", for: .normal)
            signinbutton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            self.view.addSubview(signinbutton)
            let loginwithfbbutton = UIButton(frame: CGRect(x: 24, y: 470, width: 327, height: 44))
            loginwithfbbutton.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.2588235294, blue: 0.537254902, alpha: 1)
            loginwithfbbutton.setTitle("Login with Facebook", for: .normal)
            loginwithfbbutton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            self.view.addSubview(loginwithfbbutton)
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
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
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
