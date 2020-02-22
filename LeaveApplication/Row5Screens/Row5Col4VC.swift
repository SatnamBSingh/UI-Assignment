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
        
        signUpCredentialsView.frame = CGRect(x: 45, y: 136, width: self.view.frame.width - 90, height: 449)
        signupLabel.frame = CGRect(x: (self.signUpCredentialsView.frame.width - 127)/2, y: 43, width: 127, height: 24)
        fullnameSignup.frame = CGRect(x: 10, y: 87, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        lastnameSignup.frame = CGRect(x: 10, y: 139, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        emailSignup.frame = CGRect(x: 10, y: 191, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        passwordSignup.frame = CGRect(x: 10, y: 243, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        signUpbutton.frame = CGRect(x: 10, y: 348, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        signupwithfbButton.frame = CGRect(x: 10, y: 400, width: self.signUpCredentialsView.frame.width - 20, height: 44)
        
        
    }
    
    func desiredSignInView(){
        
        signinViewCredentials.frame = CGRect(x: 8, y: 163, width: self.view.frame.width - 16, height: 476)
        signinLabel.frame = CGRect(x: (self.signinViewCredentials.frame.width - 147)/2, y: 18, width: 147, height: 21)
        signinUsername.frame = CGRect(x: 15, y: 191, width: self.signinViewCredentials.frame.width - 30, height: 44)
        signinPassword.frame = CGRect(x: 15, y: 245, width: self.signinViewCredentials.frame.width - 30, height: 44)
        signinButton.frame = CGRect(x: 15, y: 346, width: self.signinViewCredentials.frame.width - 30, height: 44)
        signinwithfbButton.frame = CGRect(x: 15, y: 398, width: self.signinViewCredentials.frame.width - 30, height: 44)
        remembermelLabel.frame = CGRect(x: 45, y: 297, width: 138, height: 23)
        forgotpasswordButton.frame = CGRect(x: self.signinViewCredentials.frame.width - 140, y: 297, width: 139, height: 23)
        signinmageView.frame = CGRect(x: 129, y: 66, width: self.signinViewCredentials.frame.width - 258, height: 100)
        // remembermeButton.frame = CGRect(x: 15, y: 298, width:22, height: 22)
        
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return true
    }
    
    
    @objc func panGestureHandle(panGestureRecognizer: UIPanGestureRecognizer!){
        
        //setting up initial positions of views
        let y1Position = signUpCredentialsView.frame.origin.y
        let y2Position = signinViewCredentials.frame.origin.y
        let translation = panGestureRecognizer.translation(in: self.view)
        
        //States of PanGesture (.began,.chanegd, .ended)
        switch panGestureRecognizer.state {
        case .began, .changed:
            
            DispatchQueue.main.async {
                
                if panGestureRecognizer.view!.tag == 1 {
                    
                    self.signinViewCredentials.frame.origin.y += translation.y
                    
                    // self.signUpCredentialsView.frame = self.originalSignInViewRect!
                    
                    self.signUpCredentialsView.frame = CGRect(x: self.signUpCredentialsView.frame.origin.x - (self.signUpCredentialsView.frame.origin.x/self.signUpCredentialsView.frame.origin.y)*translation.y*40/475, y: self.signUpCredentialsView.frame.origin.y + translation.y*40/475, width: (self.signUpCredentialsView.frame.height + translation.y*40/475)*(self.originalSignUpViewRect?.width)!/(self.originalSignUpViewRect?.height)!, height: self.signUpCredentialsView.frame.height+translation.y*40/475)
                    self.signupLabel.frame = CGRect(x: (self.signUpCredentialsView.frame.width - 127)/2, y: 43, width: 127, height: 24)
                    self.fullnameSignup.frame = CGRect(x: 10, y: 87, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.lastnameSignup.frame = CGRect(x: 10, y: 139, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.emailSignup.frame = CGRect(x: 10, y: 191, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.passwordSignup.frame = CGRect(x: 10, y: 243, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.signUpbutton.frame = CGRect(x: 10, y: 348, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    self.signupwithfbButton.frame = CGRect(x: 10, y: 400, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                    print("Animating SignInCredentials")
                    
                    if y1Position < (y1Position + translation.y){
                        self.fullnameSignup.alpha = 1
                        self.signUpbutton.alpha = 1
                        self.passwordSignup.alpha = 1
                        self.signUpCredentialsView.backgroundColor = self.signinViewCredentials.backgroundColor
                    }
                    if y1Position > (y1Position + translation.y){
                        
                        self.signinViewCredentials.alpha += 0.3
                        self.fullnameSignup.alpha -= 0.25
                        self.signUpbutton.alpha -= 0.25
                        self.passwordSignup.alpha -= 0.1
                    }
                    
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                    
                }
                else {
                    self.signUpCredentialsView.frame.origin.y += translation.y
                    
                    self.signinViewCredentials.frame = self.originalSignInViewRect!
                    
                    // self.signinViewCredentials.frame = CGRect(x: self.signinViewCredentials.frame.origin.x - (self.signinViewCredentials.frame.origin.x/self.signinViewCredentials.frame.origin.y)*translation.y*10/475, y: self.signinViewCredentials.frame.origin.y + translation.y*10/475, width: (self.signinViewCredentials.frame.height + translation.y*10/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signinViewCredentials.frame.height+translation.y*10/475)
                    self.signinLabel.frame = CGRect(x: (self.signinViewCredentials.frame.width - 147)/2, y: 18, width: 147, height: 21)
                    self.signinUsername.frame = CGRect(x: 15, y: 191, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinPassword.frame = CGRect(x: 15, y: 245, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinButton.frame = CGRect(x: 15, y: 346, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinwithfbButton.frame = CGRect(x: 15, y: 398, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.remembermelLabel.frame = CGRect(x: 45, y: 297, width: 138, height: 23)
                    self.forgotpasswordButton.frame = CGRect(x: self.signinViewCredentials.frame.width - 140, y: 297, width: 139, height: 23)
                    self.signinmageView.frame = CGRect(x: 129, y: 66, width: self.signinViewCredentials.frame.width - 258, height: 100)
                    
                    
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                }
            }
            
            break
        case .ended:
            DispatchQueue.main.async {
                
                if panGestureRecognizer.view!.tag == 1 {
                    
                    if (self.signinViewCredentials.frame.origin.y - (self.originalSignInViewRect?.origin.y)! >= 100)  {
                        
                        //CurveEaseIn- the animation to begin slowly, and then speed up as it progresses.
                        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseIn], animations: {
                            
                            //Completion- It gets passed to a function as an argument and then called when that function is done.
                        }, completion: { (action) in
                            self.signinViewCredentials.alpha = 0
                            UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                self.view.bringSubview(toFront: self.signUpCredentialsView)
                                self.signupLabel.frame = CGRect(x: (self.signUpCredentialsView.frame.width - 127)/2, y: 43, width: 127, height: 24)
                                self.fullnameSignup.frame = CGRect(x: 10, y: 87, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.lastnameSignup.frame = CGRect(x: 10, y: 139, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.emailSignup.frame = CGRect(x: 10, y: 191, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.passwordSignup.frame = CGRect(x: 10, y: 243, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.signUpbutton.frame = CGRect(x: 10, y: 348, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                self.signupwithfbButton.frame = CGRect(x: 10, y: 400, width: self.signUpCredentialsView.frame.width - 20, height: 44)
                                
                            }, completion: { (action) in
                                
                                //self.signinViewCredentials.frame = CGRect(x: self.signinViewCredentials.frame.origin.x - (self.signinViewCredentials.frame.origin.x/self.signinViewCredentials.frame.origin.y)*translation.y*20/475, y: self.signinViewCredentials.frame.origin.y + translation.y*20/475, width: (self.signinViewCredentials.frame.height + translation.y*20/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signinViewCredentials.frame.height+translation.y*20/475)
                                
                                self.signinViewCredentials.frame = self.originalSignUpViewRect!
                                
                                self.signinLabel.frame = CGRect(x: (self.signinViewCredentials.frame.width - 147)/2, y: 18, width: 147, height: 21)
                                self.signinUsername.frame = CGRect(x: 15, y: 191, width: self.signinViewCredentials.frame.width - 30, height: 44)
                                self.signinPassword.frame = CGRect(x: 15, y: 245, width: self.signinViewCredentials.frame.width - 30, height: 44)
                                self.signinButton.frame = CGRect(x: 15, y: 346, width: self.signinViewCredentials.frame.width - 30, height: 44)
                                self.signinwithfbButton.frame = CGRect(x: 15, y: 398, width: self.signinViewCredentials.frame.width - 30, height: 44)
                                self.remembermelLabel.frame = CGRect(x: 45, y: 297, width: 138, height: 23)
                                self.forgotpasswordButton.frame = CGRect(x: 205, y: 297, width: 139, height: 23)
                                self.signinmageView.frame = CGRect(x: 129, y: 66, width: self.signinViewCredentials.frame.width - 258, height: 100)
                                // self.remembermeButton.frame = CGRect(x: 15, y: 298, width: self.signinViewCredentials.frame.width - 30, height: 22)
                                
                                //CurveEaseInOut- the animation to begin slowly, accelerate through the middle of its duration, and then slow again before completing.
                                UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
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
                        self.passwordSignup.alpha = 0
                    }
                    
                    self.signUpCredentialsView.frame = self.originalSignInViewRect!
                    self.signupLabel.frame = CGRect(x: (self.signUpCredentialsView.frame.width - 127)/2, y: 43, width: 127, height: 24)
                    self.fullnameSignup.frame = CGRect(x: 10, y: 87, width: 260, height: 44)
                    self.lastnameSignup.frame = CGRect(x: 10, y: 139, width: 260, height: 44)
                    self.emailSignup.frame = CGRect(x: 10, y: 191, width: 260, height: 44)
                    self.passwordSignup.frame = CGRect(x: 10, y: 243, width: 260, height: 44)
                    self.reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: 260, height: 44)
                    self.signUpbutton.frame = CGRect(x: 10, y: 348, width: 260, height: 44)
                    self.signupwithfbButton.frame = CGRect(x: 10, y: 400, width: 260, height: 44)
                }
                else {
                    if (self.signUpCredentialsView.frame.origin.y - (self.originalSignUpViewRect?.origin.y)! >= 100)  {
                        
                        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseIn], animations: {
                            //Completion- It gets passed to a function as an argument and then called when that function is done.
                        }, completion: { (action) in
                            self.signUpCredentialsView.alpha = 0
                            UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                self.view.bringSubview(toFront: self.signinViewCredentials)
                                
                            }, completion: { (action) in
                                self.signUpCredentialsView.frame = self.originalSignUpViewRect!
                                self.signupLabel.frame = CGRect(x: (self.signUpCredentialsView.frame.width - 127)/2, y: 43, width: 127, height: 24)
                                self.fullnameSignup.frame = CGRect(x: 10, y: 87, width: 260, height: 44)
                                self.lastnameSignup.frame = CGRect(x: 10, y: 139, width: 260, height: 44)
                                self.emailSignup.frame = CGRect(x: 10, y: 191, width: 260, height: 44)
                                self.passwordSignup.frame = CGRect(x: 10, y: 243, width: 260, height: 44)
                                self.reenterpasswrdSignup.frame = CGRect(x: 10, y: 295, width: 260, height: 44)
                                self.signUpbutton.frame = CGRect(x: 10, y: 348, width: 260, height: 44)
                                self.signupwithfbButton.frame = CGRect(x: 10, y: 400, width: 260, height: 44)
                                
                                //CurveEaseInOut- the animation to begin slowly, accelerate through the middle of its duration, and then slow again before completing.
                                UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                    self.signUpCredentialsView.alpha = 1
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
                        self.passwordSignup.alpha = 0
                    }
                    
                    self.signinViewCredentials.frame = self.originalSignInViewRect!
                    self.signinLabel.frame = CGRect(x: (self.signinViewCredentials.frame.width - 147)/2, y: 18, width: 147, height: 21)
                    self.signinUsername.frame = CGRect(x: 15, y: 191, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinPassword.frame = CGRect(x: 15, y: 245, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinButton.frame = CGRect(x: 15, y: 346, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.signinwithfbButton.frame = CGRect(x: 15, y: 398, width: self.signinViewCredentials.frame.width - 30, height: 44)
                    self.remembermelLabel.frame = CGRect(x: 45, y: 297, width: 138, height: 23)
                    self.forgotpasswordButton.frame = CGRect(x: 205, y: 297, width: 139, height: 23)
                    self.signinmageView.frame = CGRect(x: 129, y: 66, width: self.signinViewCredentials.frame.width - 258, height: 100)
                    // self.remembermeButton.frame = CGRect(x: 15, y: 298, width: self.signinViewCredentials.frame.width - 30, height: 22)
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
