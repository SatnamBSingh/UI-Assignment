//
//  Row3Col2VC.swift
//  Ui Assignment
//
//  Created by Captain on 01/02/20.
//

import UIKit

class Row3Col2VC: UIViewController {

    
    var position: CGPoint?
    var originalSignInViewRect: CGRect?
    var originalSignUpViewRect: CGRect?
    var aspectRatio: CGFloat?
    
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var signinview: UIView!
    @IBOutlet weak var signinusername: UITextField!
    @IBOutlet weak var signinpassword: UITextField!
    @IBOutlet weak var remembermelbl: UILabel!
    @IBOutlet weak var forgotpasswordlbl: UILabel!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var loginwithfbbutton: UIButton!
    
    
    @IBOutlet weak var signupview: UIView!
    @IBOutlet weak var fullnametxtfld: UITextField!
    @IBOutlet weak var lastnametxtfld: UITextField!
    @IBOutlet weak var emailtxtfld: UITextField!
    @IBOutlet weak var paswordtxtfld: UITextField!
    @IBOutlet weak var reenterpsswordtxtfld: UITextField!
    @IBOutlet weak var createanaccountbttn: UIButton!
    @IBOutlet weak var signupwithfbbttn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        signinview.layer.shadowColor = UIColor.lightGray.cgColor
        signinview.layer.shadowOffset = CGSize(width: 1, height: 1)
        signinview.layer.shadowOpacity = 1
        
        //UIApplication.shared.statusBarView?.backgroundColor = UIColor.appStatusBarRed
        
        
       // containerView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 667)
        //self.scrollView.addSubview(containerView)
        
        //backgroundImageView.frame = containerView.frame
        
       setupforsigninview()
       // signinview.frame = CGRect(x: 9, y: 70, width: self.containerView.frame.width-2*9, height: 475)
      //  setupSignUpView()
        
      //  aspectRatio = credentialsView.frame.width/credentialsView.frame.height
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panRecognizer(_:)))
        let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panRecognizer(_:)))
        self.signupview.addGestureRecognizer(panGesture)
        self.signinview.addGestureRecognizer(panGesture2)
        
        signinview.tag = 1
        signinview.tag = 0
        
    }
    
    
    func setupforsigninview(){
        signinview.frame = CGRect(x: 21.5, y: 40, width: self.view.frame.width-2*21.5, height: 441.5)
        signinusername.frame = CGRect(x: 13, y: 170, width: signinview.frame.width-26, height: 44)
        
        signinpassword.frame = CGRect(x: 13, y: 227, width: signinview.frame.width-26, height: 44)
        
        remembermelbl.frame = CGRect(x: 32.5, y: 298, width: 112, height: 21)
        forgotpasswordlbl.frame = CGRect(x: signinpassword.frame.origin.x+signinpassword.frame.width-137, y: 298, width: 137, height: 21)
        
        self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinview.frame.height-114, width: self.signinview.frame.width-26, height: self.signinButton.frame.height)
        self.signupwithfbbttn.frame = CGRect(x: self.signupwithfbbttn.frame.origin.x, y: self.signinview.frame.height-57, width: self.signinview.frame.width-26, height: self.signupwithfbbttn.frame.height)
    }
    
    
    
    @objc func panRecognizer(_ sender: UIPanGestureRecognizer){
        
        let initialPosY = signinview.frame.origin.y
        let intiallPosY2 = self.signinview.frame.origin.y
        let translation = sender.translation(in: self.view)
        
        
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
