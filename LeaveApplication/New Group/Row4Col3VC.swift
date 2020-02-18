//
//  Row4Col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 06/02/20.
//

import UIKit

class Row4Col3VC: UIViewController {

    @IBOutlet weak var signInView: UIView!
    @IBOutlet weak var usernameTxtfld: UITextField!
    @IBOutlet weak var passwordTxtfld: UITextField!
    @IBOutlet weak var remebermeLbl: UIButton!
    @IBOutlet weak var remembermeButton: UIButton!
    @IBOutlet weak var forgotpasswordLbl: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var imageviewCentered: UIImageView!
    @IBOutlet weak var secondView: UIScrollView!
    @IBOutlet weak var signinwithfbButton: UIButton!
    
    
    @IBOutlet weak var signupView: UIView!
    @IBOutlet weak var fullnameTxtfld: UITextField!
    @IBOutlet weak var lastnameTxtfld: UITextField!
    @IBOutlet weak var emailTxrfld: UITextField!
    @IBOutlet weak var passowrdTxtfld: UITextField!
    @IBOutlet weak var confirmpasswordTxtfld: UITextField!
    @IBOutlet weak var createanaccountButton: UIButton!
    @IBOutlet weak var signupwithfbButton: UIButton!
    @IBAction func signupButton(_ sender: Any) {
        
    }
    
    @IBOutlet weak var segmenrtedControl: UISegmentedControl!
    @IBAction func indexChanged(_ sender: Any) {
        switch segmenrtedControl.selectedSegmentIndex {
        case 0:

            signupView.isHidden = false
            fullnameTxtfld.isHidden = false
            lastnameTxtfld.isHidden = false
            emailTxrfld.isHidden = false
            passowrdTxtfld.isHidden = false
            confirmpasswordTxtfld.isHidden = false
            remembermeButton.isHidden = true
          
            
        case 1:
            signInView.isHidden = false
            signInView.isHidden = false
            usernameTxtfld.isHidden = false
            passwordTxtfld.isHidden = false
            remebermeLbl.isHidden = false
            remembermeButton.isHidden = false
            forgotpasswordLbl.isHidden = false
            signinButton.isHidden = false
            signupButton.isHidden = false
            imageviewCentered.isHidden = false
            signinwithfbButton.isHidden = false
            
//            var lineView = UIView(frame: CGRect(x: 9, y: 531, width: 359, height: 2.0))
//            lineView.layer.borderWidth = 1.0
//            lineView.layer.borderColor = UIColor.lightGray.cgColor
//            self.view.addSubview(lineView)
            
            signupView.isHidden = true
            fullnameTxtfld.isHidden = true
            lastnameTxtfld.isHidden = true
            emailTxrfld.isHidden = true
            passowrdTxtfld.isHidden = true
            confirmpasswordTxtfld.isHidden = true
        default:
            break;
        }
    }
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageviewCentered.layer.cornerRadius = imageviewCentered.frame.width/2
        imageviewCentered.clipsToBounds = true
        let titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]
        UISegmentedControl.appearance().setTitleTextAttributes(titleTextAttributes, for: .selected)
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden = true
      
        
        signupView.isHidden = true
        fullnameTxtfld.isHidden = true
        lastnameTxtfld.isHidden = true
        emailTxrfld.isHidden = true
        passowrdTxtfld.isHidden = true
        confirmpasswordTxtfld.isHidden = true
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
