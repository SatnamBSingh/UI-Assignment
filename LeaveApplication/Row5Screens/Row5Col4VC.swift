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
        reorderUI()
        
        originalSignInViewRect = signinViewCredentials.frame
        originalSignUpViewRect = signUpCredentialsView.frame
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden  = true
        // Do any additional setup after loading the view.
    }
    
    func reorderUI(){
        signinViewCredentials.layer.shadowColor = UIColor.lightGray.cgColor
        signinViewCredentials.layer.shadowOffset = CGSize(width: 1, height: 1)
        signinViewCredentials.layer.shadowOpacity = 1
        
        signUpCredentialsView.layer.shadowColor = UIColor.lightGray.cgColor
        signUpCredentialsView.layer.shadowOffset = CGSize(width: 1, height: 1)
        signUpCredentialsView.layer.shadowOpacity = 1
        
        desiredSignUpView()
        desiredSignInView()
        aspectRatio = signinViewCredentials.frame.width/signinViewCredentials.frame.height
        
        let panGesture1 = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle))
        let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle))
        self.signinViewCredentials.addGestureRecognizer(panGesture1)
        self.signUpCredentialsView.addGestureRecognizer(panGesture2)
        
        signinViewCredentials.tag = 1
        signUpCredentialsView.tag = 0
        
    }
    
    func desiredSignUpView(){
        
        signUpCredentialsView.frame = CGRect(x: 45, y: 136, width: 285, height: 449)
        fullnameSignup.frame = CGRect(x: 10, y: 87, width: 260, height: 44)
        lastnameSignup.frame = CGRect(x: 10, y: 139, width: 260, height: 44)
        emailSignup.frame = CGRect(x: 10, y: 191, width: 260, height: 44)
        passwordSignup.frame = CGRect(x: 10, y: 243, width: 260, height: 44)
        reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: 260, height: 44)
        signUpbutton.frame = CGRect(x: 10, y: 348, width: 260, height: 44)
        signupwithfbButton.frame = CGRect(x: 10, y: 400, width: 260, height: 44)
        
        //        signUpCredentialsView.frame = CGRect(x: 8, y: 163, width: 359, height: 476)
        //        fullnameSignup.frame = CGRect(x: 15, y: 100, width: 329, height: 44)
        //        lastnameSignup.frame = CGRect(x: 15, y: 150, width: 329, height: 44)
        //        emailSignup.frame = CGRect(x: 15, y: 200, width: 329, height: 44)
        //        passwordSignup.frame = CGRect(x: 15, y: 250, width: 329, height: 44)
        //        reenterpasswrdSignup.frame = CGRect(x: 15, y: 300, width: 329, height: 44)
        //        ssignUpbutton.frame = CGRect(x: 15, y: 350, width: 329, height: 44)
        //        signupwithfbButton.frame = CGRect(x: 15, y: 400, width: 329, height: 44)
    }
    
    func desiredSignInView(){
        
        signinViewCredentials.frame = CGRect(x: 8, y: 163, width: 359, height: 476)
        signinUsername.frame = CGRect(x: 15, y: 191, width: 329, height: 44)
        signinPassword.frame = CGRect(x: 15, y: 245, width: 329, height: 44)
        signinButton.frame = CGRect(x: 15, y: 346, width: 329, height: 44)
        signinwithfbButton.frame = CGRect(x: 15, y: 398, width: 329, height: 44)
        remembermelLabel.frame = CGRect(x: 45, y: 297, width: 138, height: 23)
        forgotpasswordButton.frame = CGRect(x: 205, y: 297, width: 139, height: 23)
        signinmageView.frame = CGRect(x: 129, y: 66, width: 101, height: 100)
        remembermeButton.frame = CGRect(x: 15, y: 298, width: 22, height: 22)
        
        
//                signinViewCredentials.frame = CGRect(x: 45, y: 136, width: 285, height: 449)
//                signinUsername.frame = CGRect(x: 10, y: 87, width: 260, height: 44)
//                signinPassword.frame = CGRect(x: 10, y: 139, width: 260, height: 44)
//                signinButton.frame = CGRect(x: 10, y: 191, width: 260, height: 44)
//                signinwithfbButton.frame = CGRect(x: 10, y: 243, width: 260, height: 44)
//                remembermelLabel.frame = CGRect(x: 32, y: 295, width: 260, height: 44)
//                forgotpasswordButton.frame = CGRect(x: 170, y: 348, width: 260, height: 44)
//                signinmageView.frame = CGRect(x: 5, y: 50, width: 100, height: 100)
//                remembermeButton.frame = CGRect(x: 10, y: 298, width: 22, height: 22)
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return true
    }
    
    
    @objc func panGestureHandle(panGestureRecognizer: UIPanGestureRecognizer!){
        
        //setting up initial positions of views
        let y1Situation = signUpCredentialsView.frame.origin.y
        let y2Situation = signinViewCredentials.frame.origin.y
        let translation = panGestureRecognizer.translation(in: self.view)
        
        //States of PanGesture (.began,.chanegd, .ended)
        switch panGestureRecognizer.state {
        case .began, .changed:
            
            DispatchQueue.main.async {
                
                if panGestureRecognizer.view!.tag == 1 {
                    
                    self.signinViewCredentials.frame.origin.y += translation.y
                    
                    self.signUpCredentialsView.frame = CGRect(x: 8, y: 163, width: 359, height: 476)
                    self.fullnameSignup.frame = CGRect(x: 15, y: 100, width: 329, height: 44)
                    self.lastnameSignup.frame = CGRect(x: 15, y: 150, width: 329, height: 44)
                    self.emailSignup.frame = CGRect(x: 15, y: 200, width: 329, height: 44)
                    self.passwordSignup.frame = CGRect(x: 15, y: 250, width: 329, height: 44)
                    self.reenterpasswrdSignup.frame = CGRect(x: 15, y: 300, width: 329, height: 44)
                    self.signUpbutton.frame = CGRect(x: 15, y: 350, width: 329, height: 44)
                    self.signupwithfbButton.frame = CGRect(x: 15, y: 400, width: 329, height: 44)
                    // self.settingUpSignUpView()
                    print("Animating SignInCredentials")
                    
                    if y1Situation < (y1Situation + translation.y){
                        self.fullnameSignup.alpha = 1
                        self.signUpbutton.alpha = 1
                        //self.passwordSignup.alpha = 1
                        self.signUpCredentialsView.layoutIfNeeded()
                        self.signUpCredentialsView.backgroundColor = self.signUpCredentialsView.backgroundColor
                        
                    }
                    if y1Situation > (y1Situation + translation.y){
                        
                        self.signinViewCredentials.alpha += 0.3
                        self.fullnameSignup.alpha -= 0.25
                        self.signUpbutton.alpha -= 0.25
                        //self.passwordSignup.alpha -= 0.1
                        self.signUpCredentialsView.layoutIfNeeded()
                        
                    }
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                }
                else {
                    
                    self.signUpCredentialsView.frame.origin.y += translation.y
                self.desiredSignInView()
                    
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                    
                    //                    self.signUpCredentialsView.frame = CGRect(x: 8, y: 163, width: 359, height: 476)
                    //                    self.fullnameSignup.frame = CGRect(x: 15, y: 100, width: 329, height: 44)
                    //                    self.lastnameSignup.frame = CGRect(x: 15, y: 150, width: 329, height: 44)
                    //                    self.emailSignup.frame = CGRect(x: 15, y: 200, width: 329, height: 44)
                    //                    self.passwordSignup.frame = CGRect(x: 15, y: 250, width: 329, height: 44)
                    //                    self.reenterpasswrdSignup.frame = CGRect(x: 15, y: 300, width: 329, height: 44)
                    //                    self.signUpbutton.frame = CGRect(x: 15, y: 350, width: 329, height: 44)
                    //                    self.signupwithfbButton.frame = CGRect(x: 15, y: 400, width: 329, height: 44)
                    
                    self.signinViewCredentials.frame = CGRect(x: 45, y: 136, width: 285, height: 449)
                    self.signinLabel.frame = CGRect(x: 100, y: 5, width: 100, height: 22)
                    self.signinUsername.frame = CGRect(x: 10, y: 120, width: 260, height: 44)
                    self.signinPassword.frame = CGRect(x: 10, y: 170, width: 260, height: 44)
                    self.remembermelLabel.frame = CGRect(x: 30, y: 230, width: 260, height: 44)
                    self.forgotpasswordButton.frame = CGRect(x: 80, y: 230, width: 260, height: 44)
                    self.signinmageView.frame = CGRect(x: 100, y: 25, width: 80, height: 80)
                    self.remembermeButton.frame = CGRect(x: 10, y: 240, width: 22, height: 22)
                    self.signinButton.frame = CGRect(x: 10, y: 280, width: 260, height: 44)
                    self.signinwithfbButton.frame = CGRect(x: 10, y: 340, width: 260, height: 44)
                }
            }
            
            break
        case .ended:
            DispatchQueue.main.async {
                
                if panGestureRecognizer.view!.tag == 1 {
                    
                    //brings backview to front
                    self.view.bringSubview(toFront: self.signUpCredentialsView)
                    
                    
                    if (self.signinViewCredentials.frame.origin.y - ((self.originalSignInViewRect?.origin.y)!) >= 100)  {
                        
                        //CurveEaseIn- the animation to begin slowly, and then speed up as it progresses.
                        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseIn], animations: {
                            
                            self.desiredSignUpView()
                            self.signUpCredentialsView.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signUpCredentialsView.frame.origin.y)
                            
                            //Completion- It gets passed to a function as an argument and then called when that function is done.
                        }, completion: { (action) in
                            self.signinViewCredentials.alpha = 0
                            UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
                                self.signUpCredentialsView.layoutIfNeeded()
                                
                            }, completion: { (action) in
                                self.signinViewCredentials.frame = self.originalSignInViewRect!
                                self.desiredSignInView()
                                
                                //CurveEaseInOut- the animation to begin slowly, accelerate through the middle of its duration, and then slow again before completing.
                                UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
                                    self.signinViewCredentials.alpha = 1
                                }, completion: nil)
                            })
                        })
                        
                    }
                    else{
                        self.signUpCredentialsView.frame = self.originalSignUpViewRect!
                        self.signinViewCredentials.frame = self.originalSignInViewRect!
                        self.signinViewCredentials.alpha = 1
                        self.fullnameSignup.alpha = 0
                        self.signUpbutton.alpha = 0
                        //self.passwordSignup.alpha = 0
                        self.signUpCredentialsView.layoutIfNeeded()
                    }
                    
                    //                    self.signinUsername.isHidden = true
                    //                    self.signinButton.isHidden = true
                    //                    self.signinPassword.isHidden = true
                    //                    self.signinwithfbButton.isHidden = true
                    //                    self.remembermeButton.isHidden = true
                    //                    self.forgotpasswordButton.isHidden = true
                    //                    self.remembermelLabel.isHidden = true
                    //                    self.signinmageView.isHidden = true
                    //                    self.signinLabel.isHidden = true
                    self.desiredSignUpView()
                    
                }else{
                    if (self.signUpCredentialsView.frame.origin.y - (self.originalSignUpViewRect?.origin.y)! >= 100)  {
                        self.view.bringSubview(toFront: self.signinViewCredentials)
                        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
                            // self.view.bringSubview(toFront: self.signupview)
                            self.desiredSignInView()
                            self.view.bringSubview(toFront: self.signinViewCredentials)
                            self.desiredSignUpView()
                            
                            self.signinUsername.isHidden = false
                            self.signinButton.isHidden = false
                            self.signinPassword.isHidden = false
                            self.signinwithfbButton.isHidden = false
                            self.remembermeButton.isHidden = false
                            self.forgotpasswordButton.isHidden = false
                            self.remembermelLabel.isHidden = false
                            self.signinmageView.isHidden = false
                            self.signinLabel.isHidden = false
                            self.desiredSignUpView()
                            
                        }, completion: { (action) in
                            
                           // self.signUpCredentialsView.alpha = 0
                            self.view.sendSubview(toBack: self.signUpCredentialsView)
                            self.view.bringSubview(toFront: self.signinViewCredentials)
                            UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
                                self.signinViewCredentials.backgroundColor = UIColor.white
                                
                               
                            }, completion: { (action) in
                                self.desiredSignInView()
                                UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
                                    self.signinViewCredentials.alpha = 1
                                    self.desiredSignUpView()
                                    self.view.layoutIfNeeded()
                                }, completion: nil)
                                
                            })
                        })
                        
                    }
                    
                }
            }
            
            break
        default:
            break
        }
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
