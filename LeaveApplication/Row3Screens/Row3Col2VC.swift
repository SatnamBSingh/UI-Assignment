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
    @IBOutlet weak var signinLabel: UILabel!
    
    
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var signupview: UIView!
    @IBOutlet weak var fullnametxtfld: UITextField!
    @IBOutlet weak var lastnametxtfld: UITextField!
    @IBOutlet weak var emailtxtfld: UITextField!
    @IBOutlet weak var paswordtxtfld: UITextField!
    @IBOutlet weak var reenterpsswordtxtfld: UITextField!
    @IBOutlet weak var createanaccountbttn: UIButton!
    @IBOutlet weak var signupwithfbbttn: UIButton!
    
   // var initialCentre = CGPoint()
   // @IBAction func panPiece(_ sender: UIPanGestureRecognizer) {
  //  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        reorderUI()
        originalSignInViewRect = signinview.frame
        originalSignUpViewRect = signupview.frame
        

    }
    
    func reorderUI(){
        signupview.layer.shadowColor = UIColor.lightGray.cgColor
        signupview.layer.shadowOffset = CGSize(width: 1, height: 1)
        signupview.layer.shadowOpacity = 1.0
        
        signinview.layer.shadowColor = UIColor.lightGray.cgColor
        signinview.layer.shadowOffset = CGSize(width: 1, height: 1)
        signinview.layer.shadowOpacity = 1.0
        
        setupforSignInView()
        setupSignUpView()
        
        aspectRatio = signupview.frame.width/signupview.frame.height
        let panGesture1 = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle))
        let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle))
        self.signupview.addGestureRecognizer(panGesture1)
        self.signinview.addGestureRecognizer(panGesture2)
        
        signinview.tag = 1
        signupview.tag = 0
        
    }
    
    func setupforSignInView(){
        signinview.frame = CGRect(x: 43, y: 144, width: 289, height: 433)
        signinusername.frame = CGRect(x: 15, y: 86, width: 259, height: 44)
        signinpassword.frame = CGRect(x: 15, y: 138, width: 259, height: 44)
        remembermelbl.frame = CGRect(x: 40, y: 192, width: 101, height: 21)
        forgotpasswordlbl.frame = CGRect(x: 149, y: 192, width: 125, height: 21)
        signinButton.frame = CGRect(x: 15, y: 233, width: 259, height: 44)
        loginwithfbbutton.frame = CGRect(x: 15, y: 285, width: 259, height: 44)
    }
    
    func setupSignUpView(){
        signupview.frame = CGRect(x: 16, y: 173, width: 343, height: 463)
        fullnametxtfld.frame = CGRect(x: 15, y: 58, width: 310, height: 44)
        lastnametxtfld.frame = CGRect(x: 15, y: 110, width:310, height: 44)
        emailtxtfld.frame = CGRect(x: 15, y: 162, width: 310, height: 44)
        paswordtxtfld.frame = CGRect(x: 15, y: 214, width: 310, height: 44)
        reenterpsswordtxtfld.frame = CGRect(x: 15, y: 266, width: 310, height: 44)
        createanaccountbttn.frame = CGRect(x: 15, y: 325, width: 310, height: 44)
        signupwithfbbttn.frame = CGRect(x: 15, y: 377, width: 310, height: 44)
    }
    
    // it allows all gestures to be recognized simultaneously
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    //an object representing a touch
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        return true
    }
    
    @objc func panGestureHandle(panGestureRecognizer: UIPanGestureRecognizer!){
        
        //setting up initial positions of views
        let y1Position = signinview.frame.origin.y
        let y2Position = self.signupview.frame.origin.y
        let translation = panGestureRecognizer.translation(in: self.view)
        
        //States of PanGesture (.began,.chanegd, .ended)
        switch panGestureRecognizer.state {
        case .began, .changed:
            
            DispatchQueue.main.async {
                
                // tag is 0,intreacting with signupview
                if panGestureRecognizer.view!.tag == 0 {
                    
                    self.signupview.frame.origin.y += translation.y
                    self.setupforSignInView()
                    print("Animating SignUpCredentials")
                    if y1Position < (y1Position + translation.y){
                        self.signinusername.alpha = 1
                        self.signinButton.alpha = 1
                        self.signinpassword.alpha = 1
                        self.signinview.layoutIfNeeded()
                        self.signinview.backgroundColor = self.signupview.backgroundColor
                        
                    }
                    if y1Position > (y1Position + translation.y){
                        
                        self.signupview.alpha += 0.3
                        self.signinusername.alpha -= 0.25
                        self.signinButton.alpha -= 0.25
                        self.signinpassword.alpha -= 0.1
                        self.signinview.layoutIfNeeded()
                    }
                    
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                    
                }
                else {
                    self.signinview.frame.origin.y += translation.y
                    
                    self.signupview.frame = CGRect(x: 43, y: 144, width: 289, height: 433)
                    self.signupLabel.frame = CGRect(x: 105, y: 46, width: 80, height: 20)
                    self.fullnametxtfld.frame = CGRect(x: 15, y: 84, width: 259, height: 44)
                    self.lastnametxtfld.frame = CGRect(x: 15, y: 136, width: 259, height: 44)
                    self.emailtxtfld.frame = CGRect(x: 15, y: 188, width: 259, height: 44)
                    self.paswordtxtfld.frame = CGRect(x: 15, y: 240, width: 259, height: 44)
                    self.reenterpsswordtxtfld.frame = CGRect(x: 15, y: 292, width: 259, height: 44)
                    self.createanaccountbttn.frame = CGRect(x: 15, y: 344, width: 259, height: 44)
                    self.signupwithfbbttn.frame = CGRect(x: 15, y: 396, width: 259, height: 44)
                    
                    panGestureRecognizer.setTranslation(CGPoint.zero, in: self.view)
                }
            }
            
            break
        case .ended:
            DispatchQueue.main.async {
                
                if panGestureRecognizer.view!.tag == 0 {
                    
                    //brings backview to front
                    self.view.bringSubview(toFront: self.signinview)
                    
                    if (self.signupview.frame.origin.y - (self.originalSignUpViewRect?.origin.y)! >= 100)  {
                        
                        //CurveEaseIn- the animation to begin slowly, and then speed up as it progresses.
                        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseIn], animations: {
                            //self.signinview.frame = CGRect(x: 16, y: 183, width: 343, height: 463)
                            // self.signinusername.frame = CGRect(x: 15, y: 86, width: 310, height: 44)
                            // self.signinpassword.frame = CGRect(x: 15, y: 138, width: 310, height: 44)
                            
                            // self.setupforSignInView()
                            // self.signinview.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signinview.frame.origin.y)
                            
                            
                            //Completion- It gets passed to a function as an argument and then called when that function is done.
                        }, completion: { (action) in
                            self.signupview.alpha = 0
                            UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                self.view.bringSubview(toFront: self.signinview)

                            }, completion: { (action) in
                                self.signupview.frame = CGRect(x: 43, y: 144, width: 289, height: 433)
                                self.signupLabel.frame = CGRect(x: 105, y: 46, width: 80, height: 20)
                                self.fullnametxtfld.frame = CGRect(x: 15, y: 84, width: 259, height: 44)
                                self.lastnametxtfld.frame = CGRect(x: 15, y: 136, width: 259, height: 44)
                                self.emailtxtfld.frame = CGRect(x: 15, y: 188, width: 259, height: 44)
                                self.paswordtxtfld.frame = CGRect(x: 15, y: 240, width: 259, height: 44)
                                self.reenterpsswordtxtfld.frame = CGRect(x: 15, y: 292, width: 259, height: 44)
                                self.createanaccountbttn.frame = CGRect(x: 15, y: 344, width: 259, height: 44)
                                self.signupwithfbbttn.frame = CGRect(x: 15, y: 396, width: 259, height: 44)
                               // self.setupSignUpView()
                                
                                //CurveEaseInOut- the animation to begin slowly, accelerate through the middle of its duration, and then slow again before completing.
                                UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                    self.signupview.alpha = 1
                                }, completion: nil)
                            })
                        })
                        
                    }
                    else{
                        self.signinview.frame = self.originalSignInViewRect!
                        self.signupview.frame = self.originalSignUpViewRect!
                        self.signupview.alpha = 1
                        self.signinusername.alpha = 0
                        self.signinButton.alpha = 0
                        self.signinpassword.alpha = 0
                    }
                    
                    self.signinview.frame = CGRect(x: 16, y: 190, width: 343, height: 463)
                    self.signinLabel.frame = CGRect(x: 120, y: 40, width: 80, height: 20)
                    self.signinusername.frame = CGRect(x:15, y: 86, width: 310, height: 44)
                    self.signinpassword.frame = CGRect(x: 15, y: 138, width: 310, height: 44)
                    self.signinButton.frame = CGRect(x: 15, y: 233, width: 310, height: 44)
                    self.remembermelbl.frame = CGRect(x: 40, y: 192, width: 101, height: 21)
                    self.forgotpasswordlbl.frame = CGRect(x: 200, y: 192, width: 125, height: 21)
                    self.signinButton.frame = CGRect(x: 15, y: 233, width: 310, height: 44)
                    self.loginwithfbbutton.frame = CGRect(x: 15, y: 285, width: 310, height: 44)
                }
                else {
                    if (self.signinview.frame.origin.y - (self.originalSignInViewRect?.origin.y)! >= 100)  {
                        self.view.bringSubview(toFront: self.signupview)
                        UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                            self.signinview.frame.origin.y += self.view.frame.height
         //                   self.setupforSignInView()
                            //self.signupview.frame = CGRect(x: 16, y: 173, width: 343, height: 463)
                            // self.signupview.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signupview.frame.origin.y)
                           
                            self.setupSignUpView()
                            self.view.bringSubview(toFront: self.signupview)
         //                   self.setupforSignInView()
                            self.fullnametxtfld.isHidden = false
                            self.lastnametxtfld.isHidden = false
                            self.emailtxtfld.isHidden = false
                            self.signupwithfbbttn.isHidden = false
                            self.paswordtxtfld.isHidden = false
                            self.reenterpsswordtxtfld.isHidden = false
                            self.createanaccountbttn.isHidden = false
                            
                        }, completion: { (action) in
                            
                            self.signinview.alpha = 0
                            self.view.bringSubview(toFront: self.signupview)
                            UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                self.signupview.backgroundColor = UIColor.white
                                
                                self.setupforSignInView()
                            }, completion: { (action) in
                                UIView.animate(withDuration: 0.7, delay: 0, options: [.curveEaseInOut], animations: {
                                    self.signupview.alpha = 1
                            
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
