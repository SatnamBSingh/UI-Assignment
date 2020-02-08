//
//  Row5Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 07/02/20.
//

import UIKit

class Row5Col4VC: UIViewController {

    
    var position: CGPoint?
    var originalSignInViewRect: CGRect?
    var originalSignUpViewRect: CGRect?
    var aspectRatio: CGFloat?
    
    
    @IBOutlet weak var signUpCredentialsView: UIView!
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var fullnameSignup: UITextField!
    @IBOutlet weak var lastnameSignup: UITextField!
    @IBOutlet weak var emailSignup: UITextField!
    @IBOutlet weak var passwordSignup: UITextField!
    @IBOutlet weak var reenterpasswrdSignup: UITextField!
    @IBOutlet weak var signUpbutton: UIButton!
    @IBOutlet weak var signupwithfbButton: UIButton!
    
    
    @IBOutlet weak var signinViewCredentials: UIView!
    @IBOutlet weak var signinLabel: UILabel!
    @IBOutlet weak var signinmageView: UIImageView!
    @IBOutlet weak var signinUsername: UITextField!
    @IBOutlet weak var signinPassword: UITextField!
    @IBOutlet weak var remembermeButton: UIButton!
    @IBOutlet weak var remembermelLabel: UILabel!
    @IBOutlet weak var forgotpasswordButton: UIButton!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signinwithfbButton: UIButton!
    
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden  = true
        // Do any additional setup after loading the view.
    }
    

    
    func setupUI(){
        signUpCredentialsView.layer.shadowColor = UIColor.lightGray.cgColor
        signUpCredentialsView.layer.shadowOffset = CGSize(width: 1, height: 1)
        signUpCredentialsView.layer.shadowOpacity = 1
        
      //  setupforsigninview()
        //setupSignUpView()
        
        aspectRatio = signinViewCredentials.frame.width/signUpCredentialsView.frame.height
        
     //   let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizer(_:)))
       // let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizer(_:)))
       // self.signinViewCredentials.addGestureRecognizer(panGesture)
        //self.signUpCredentialsView.addGestureRecognizer(panGesture2)
        
        signUpCredentialsView.tag = 1
        signinViewCredentials.tag = 0
        
    }
    //285  449 signup dimensions
    //359 476  signin dimensions
    func setupforsigninview(){
        signUpCredentialsView.frame = CGRect(x: 21.5, y: 40, width: self.view.frame.width-2*21.5, height: 449)
        fullnameSignup.frame = CGRect(x: 13, y: 170, width: signUpCredentialsView.frame.width-26, height: 44)
        
        passwordSignup.frame = CGRect(x: 13, y: 227, width: signUpCredentialsView.frame.width-26, height: 44)
        
        //remembermelbl.frame = CGRect(x: 32.5, y: 298, width: 112, height: 21)
       // forgotpasswordlbl.frame = CGRect(x: signinpassword.frame.origin.x+signinpassword.frame.width-137, y: 298, width: 137, height: 21)
        
        self.signUpbutton.frame = CGRect(x: self.signUpbutton.frame.origin.x, y: self.signUpCredentialsView.frame.height-114, width: self.signUpCredentialsView.frame.width-26, height: self.signUpbutton.frame.height)
        self.signupwithfbButton.frame = CGRect(x: self.signupwithfbButton.frame.origin.x, y: self.signUpCredentialsView.frame.height-57, width: self.signUpCredentialsView.frame.width-26, height: self.signupwithfbButton.frame.height)
    }
    
    func setupSignInView(){
        signinUsername.frame = CGRect(x: 13, y: 63, width: signinViewCredentials.frame.width-2*13, height: 44)
       // lastnametxtfld.frame = CGRect(x: 13, y: 120, width: signupview.frame.width-2*13, height: 44)
       // emailtxtfld.frame = CGRect(x: 13, y: 177, width: signupview.frame.width-2*13, height: 44)/
        signinPassword.frame = CGRect(x: 13, y: 234, width: signinViewCredentials.frame.width-2*13, height: 44)
        //reenterpsswordtxtfld.frame = CGRect(x: 13, y: 291, width: signupview.frame.width-2*13, height: 44)
        signinButton.frame = CGRect(x: 13, y: 361, width: signinViewCredentials.frame.width-2*13, height: 44)
        signinwithfbButton.frame = CGRect(x: 13, y: 418, width: signinViewCredentials.frame.width-2*13, height: 44)
        
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
