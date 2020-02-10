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
    
    
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var signupview: UIView!
    @IBOutlet weak var fullnametxtfld: UITextField!
    @IBOutlet weak var lastnametxtfld: UITextField!
    @IBOutlet weak var emailtxtfld: UITextField!
    @IBOutlet weak var paswordtxtfld: UITextField!
    @IBOutlet weak var reenterpsswordtxtfld: UITextField!
    @IBOutlet weak var createanaccountbttn: UIButton!
    @IBOutlet weak var signupwithfbbttn: UIButton!
    
    
    
    var initialCentre = CGPoint()
    @IBAction func panPiece(_ sender: UIPanGestureRecognizer) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 navigationController?.navigationBar.isHidden = true
        setupUI()
        originalSignInViewRect = signinview.frame
        originalSignUpViewRect = signupview.frame
        
        signupview.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        signupview.layer.shadowOffset = CGSize(width: 1, height: 1)
        signupview.layer.shadowOpacity = 1.0
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        signinview.layer.shadowColor = UIColor.lightGray.cgColor
        signinview.layer.shadowOffset = CGSize(width: 1, height: 1)
        signinview.layer.shadowOpacity = 1.0
        
        setupforsigninview()
        setupSignUpView()
        
        aspectRatio = signupview.frame.width/signupview.frame.height
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle(_:)))
        let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panGestureHandle(_:)))
        self.signupview.addGestureRecognizer(panGesture)
        self.signinview.addGestureRecognizer(panGesture2)
        
        signinview.tag = 1
        signupview.tag = 0
        
    }
    
    
    func setupforsigninview(){
        signinview.frame = CGRect(x: 43, y: 144, width: 43, height: 433)
        signinusername.frame = CGRect(x: 15, y: 86, width: signinview.frame.width, height: 44)
        signinpassword.frame = CGRect(x: 15, y: 138, width: signinview.frame.width, height: 44)
        remembermelbl.frame = CGRect(x: 40, y: 192, width: 101, height: 21)
        forgotpasswordlbl.frame = CGRect(x: signinpassword.frame.origin.x+signinpassword.frame.width, y: 192, width: 125, height: 21)
        
        self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signinButton.frame.height)
        self.signupwithfbbttn.frame = CGRect(x: self.signupwithfbbttn.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signupwithfbbttn.frame.height)
    }
    
    func setupSignUpView(){
        signupview.frame = CGRect(x: 16, y: 173, width: 343, height: 463)
        fullnametxtfld.frame = CGRect(x: 15, y: 58, width: 15, height: 44)
        lastnametxtfld.frame = CGRect(x: 15, y: 110, width:15, height: 44)
        emailtxtfld.frame = CGRect(x: 15, y: 162, width: 15, height: 44)
        paswordtxtfld.frame = CGRect(x: 15, y: 214, width: 15, height: 44)
        reenterpsswordtxtfld.frame = CGRect(x: 15, y: 266, width: 15, height: 44)
        createanaccountbttn.frame = CGRect(x: 15, y: 325, width: 15, height: 44)
        signupwithfbbttn.frame = CGRect(x: 15, y: 377, width: 15, height: 44)
    }
    
    @objc func panGestureHandle(_ sender: UIPanGestureRecognizer){
        
        let intitialPositionY1 = signinview.frame.origin.y
        let intialPositionY2 = self.signinview.frame.origin.y
        let translation = sender.translation(in: self.view)
        
        switch sender.state {
        case .began, .changed:
            
            DispatchQueue.main.async {
                
        //when the tag is 0 ie when intreacting with signupview
                    if sender.view!.tag == 0 {
        
                        self.signinview.frame = CGRect(x: self.signinview.frame.origin.x - (self.signinview.frame.origin.x/self.signinview.frame.origin.y)*translation.y*30/475, y: self.signinview.frame.origin.y + translation.y*30/475, width: (self.signinview.frame.height + translation.y*30/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signinview.frame.height+translation.y*30/475)
                        self.signupview.frame.origin.y += translation.y
                        self.signinusername.frame = CGRect(x: self.signinusername.frame.origin.x, y: self.signinusername.frame.origin.y+translation.y/2*30/475, width: self.signinview.frame.width, height: self.signinusername.frame.height)
                        self.signinpassword.frame = CGRect(x: self.signinpassword.frame.origin.x, y: self.signinpassword.frame.origin.y+translation.y/2*30/475, width: self.signinview.frame.width, height: self.signinpassword.frame.height)
                        self.remembermelbl.frame = CGRect(x: 40, y: 192+translation.y*30/475, width: 101, height: 21)
                        self.forgotpasswordlbl.frame = CGRect(x: self.signinpassword.frame.origin.x+self.signinpassword.frame.width, y: 288+translation.y*30/475, width: 125, height: 21)
                        self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signinButton.frame.height)
                        self.signupwithfbbttn.frame = CGRect(x: self.signupwithfbbttn.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signupwithfbbttn.frame.height)
                        
                        if intitialPositionY1 < (intitialPositionY1 + translation.y){
                            self.signinusername.alpha = 1
                            self.signinButton.alpha = 1
                            self.signinpassword.alpha = 1
                            
                            self.signinview.layoutIfNeeded()
                            self.signinview.backgroundColor = self.signupview.backgroundColor
                            
                        }
                        if intitialPositionY1 > (intitialPositionY1 + translation.y){
                            
                            self.signupview.alpha += 0.3
                            self.signinusername.alpha -= 0.25
                            self.signinButton.alpha -= 0.25
                            self.signinpassword.alpha -= 0.1
                            self.signinview.layoutIfNeeded()
                        }
                        
                        sender.setTranslation(CGPoint.zero, in: self.view)
                        
                    }
                    else {
                        self.signinview.frame.origin.y += translation.y
                        self.signupview.frame = CGRect(x: self.signupview.frame.origin.x - (self.signupview.frame.origin.x/self.signupview.frame.origin.y)*translation.y*30/475, y: self.signupview.frame.origin.y + translation.y*30/475, width: (self.signupview.frame.height + translation.y*30/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signupview.frame.height+translation.y*30/475)
                        self.setupSignUpView()
                        sender.setTranslation(CGPoint.zero, in: self.view)
                }
            }
            
            
            break
        case .ended:
            DispatchQueue.main.async {
                
                if sender.view!.tag == 0 {
                    //brings backview to front
                    self.view.bringSubview(toFront: self.signinview)
                    
                    if (self.signupview.frame.origin.y - (self.originalSignUpViewRect?.origin.y)! >= 100)  {
                        
                        
                        UIView.animate(withDuration: 0.6, delay: 0, options: [.curveEaseIn], animations: {
                            
                            self.signinview.frame = CGRect(x: (self.originalSignUpViewRect?.origin.x)!, y: (self.originalSignUpViewRect?.origin.y)!, width: (self.originalSignUpViewRect?.width)!, height: (self.originalSignUpViewRect?.height)!)
                            self.signinview.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signinview.frame.origin.y)
                            self.signinusername.frame = CGRect(x: 15, y: 86, width: self.signinview.frame.width, height: 44)
                            self.signinpassword.frame = CGRect(x: 15, y: 138, width: self.signinview.frame.width, height: 44)
                            self.remembermelbl.frame = CGRect(x: 40, y: 192, width: 101, height: 21)
                            self.forgotpasswordlbl.frame = CGRect(x: self.signinpassword.frame.origin.x+self.signinpassword.frame.width, y:192, width: 125, height: 21)
                            self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signinButton.frame.height)
                            self.signupwithfbbttn.frame = CGRect(x: self.signupwithfbbttn.frame.origin.x, y: self.signinview.frame.height, width: self.signinview.frame.width, height: self.signupwithfbbttn.frame.height)
                            
                        }, completion: { (action) in
                            self.signupview.alpha = 0
                            UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
                                
                                self.signinview.layoutIfNeeded()
                            }, completion: { (action) in
                                self.signupview.frame = self.originalSignInViewRect!
                                self.setupSignUpView()
                                UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
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
                        self.signinview.layoutIfNeeded()
                    }
                    
                    self.signinusername.frame = CGRect(x: self.signinusername.frame.origin.x, y: self.signinusername.frame.origin.y, width: self.signinview.frame.width, height: self.signinusername.frame.height)
                    self.signinpassword.frame = CGRect(x: self.signinpassword.frame.origin.x, y: self.signinpassword.frame.origin.y, width: self.signinview.frame.width, height: self.signinpassword.frame.height)
                    self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinButton.frame.origin.y, width: self.signinview.frame.width, height: self.signinButton.frame.height)
                }else{
                    if (self.signinview.frame.origin.y - (self.originalSignInViewRect?.origin.y)! >= 100)  {
                        
                        UIView.animate(withDuration: 0.6, delay: 0, options: [.curveEaseInOut], animations: {
                            self.signupview.frame = CGRect(x: (self.originalSignUpViewRect?.origin.x)!, y: (self.originalSignUpViewRect?.origin.y)!, width: (self.originalSignUpViewRect?.width)!, height: (self.originalSignUpViewRect?.height)!)
                            self.signupview.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signupview.frame.origin.y)
                            self.setupSignUpView()
                        }, completion: { (action) in
                            
                            self.signinview.alpha = 0
                            
                            UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
                                self.signupview.backgroundColor = UIColor.white
                                
                            }, completion: { (action) in
                                self.setupSignUpView()
                                UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
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

    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return true
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
