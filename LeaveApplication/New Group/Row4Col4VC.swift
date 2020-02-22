//
//  Row4Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 06/02/20.
//

import UIKit

class Row4Col4VC: UIViewController {

    var isHighlighted:Bool = false
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var signupView: UIView!
    
    @IBOutlet weak var signinUsername: UITextField!
    @IBOutlet weak var signinPassword: UITextField!
    @IBOutlet weak var remembermelabel: UIButton!
    @IBOutlet weak var remembermeButton: UIButton!
    @IBOutlet weak var forgotpasswordlButton: UIButton!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var digninwithfbButton: UIButton!
    
    
    @IBAction func signinButton(_ sender: Any) {
        signupView.isHidden = true
        signinUsername.isHidden = false
        signinPassword.isHidden = false
        signinUsername.isHidden = false
        remembermeButton.isHidden = false
        remembermelabel.isHidden = false
        forgotpasswordlButton.isHidden = false
        signButton.isHidden = false
        signupButton.isHidden = false
        digninwithfbButton.isHidden = false
        

    }
    @IBAction func signupButton(_ sender: Any) {
        signupView.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        signupView.isHidden = true
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden = true
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
