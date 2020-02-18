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
      //  setupUI()
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

       setupforsigninview()
        setupSignInView()

        aspectRatio = signinViewCredentials.frame.width/signUpCredentialsView.frame.height

        //let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panRecognizer(_:)))
       // let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(panRecognizer(_:)))
        //self.signinViewCredentials.addGestureRecognizer(panGesture)
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
        remembermelLabel.frame = CGRect(x: 32.5, y: 298, width: 112, height: 21)
        forgotpasswordButton.frame = CGRect(x: signinPassword.frame.origin.x+signinPassword.frame.width-137, y: 298, width: 137, height: 21)

        self.signUpbutton.frame = CGRect(x: self.signUpbutton.frame.origin.x, y: self.signUpCredentialsView.frame.height-114, width: self.signUpCredentialsView.frame.width-26, height: self.signUpbutton.frame.height)
        self.signupwithfbButton.frame = CGRect(x: self.signupwithfbButton.frame.origin.x, y: self.signUpCredentialsView.frame.height-57, width: self.signUpCredentialsView.frame.width-26, height: self.signupwithfbButton.frame.height)
    }

    func setupSignInView(){
        signinUsername.frame = CGRect(x: 13, y: 63, width: signinViewCredentials.frame.width-2*13, height: 44)
        signinPassword.frame = CGRect(x: 13, y: 234, width: signinViewCredentials.frame.width-2*13, height: 44)
        signinButton.frame = CGRect(x: 13, y: 361, width: signinViewCredentials.frame.width-2*13, height: 44)
        signinwithfbButton.frame = CGRect(x: 13, y: 418, width: signinViewCredentials.frame.width-2*13, height: 44)
        remembermelLabel.frame = CGRect(x: 32.5, y: 298, width: 112, height: 21)
        forgotpasswordButton.frame = CGRect(x: signinPassword.frame.origin.x+signinPassword.frame.width-137, y: 298, width: 137, height: 21)
    }
    
    
//    @objc func panRecognizer(_ sender: UIPanGestureRecognizer){
//
//        let initialPosY = signUpCredentialsView.frame.origin.y
//        let intiallPosY2 = self.signinViewCredentials.frame.origin.y
//        let translation = sender.translation(in: self.view)
//
//        switch sender.state {
//        case .began, .changed:
//
//            DispatchQueue.main.async {
//
//
//
//                if sender.view!.tag == 0 {
//
//
//                    self.signinViewCredentials.frame = CGRect(x: self.signinViewCredentials.frame.origin.x - (self.signinViewCredentials.frame.origin.x/self.signinViewCredentials.frame.origin.y)*translation.y*30/475, y: self.signinViewCredentials.frame.origin.y + translation.y*30/475, width: (self.signinViewCredentials.frame.height + translation.y*30/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signinViewCredentials.frame.height+translation.y*30/475)
//
//                    self.signUpCredentialsView.frame.origin.y += translation.y
//
//
//                    self.signinLabel.frame = CGRect(x: self.signinLabel.frame.origin.x, y: self.signinLabel.frame.origin.y, width: self.signinViewCredentials.frame.width, height: self.signinLabel.frame.height)
//
//
//                    self.signinUsername.frame = CGRect(x: self.signinUsername.frame.origin.x, y: self.signinUsername.frame.origin.y+translation.y/2*30/475, width: self.signinViewCredentials.frame.width-26, height: self.signinUsername.frame.height)
//
//                    self.signinPassword.frame = CGRect(x: self.signinPassword.frame.origin.x, y: self.signinPassword.frame.origin.y+translation.y/2*30/475, width: self.signinViewCredentials.frame.width-26, height: self.signinPassword.frame.height)
//
//                    self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinViewCredentials.frame.height-114, width: self.signinViewCredentials.frame.width-26, height: self.signinButton.frame.height)
//
//                    self.signinwithfbButton.frame = CGRect(x: self.signinwithfbButton.frame.origin.x, y: self.signinViewCredentials.frame.height-57, width: self.signinViewCredentials.frame.width-26, height: self.signinwithfbButton.frame.height)
//
//
//
//                    if initialPosY < (initialPosY + translation.y){
//                        self.signinLabel.alpha = 1
//                        self.signinUsername.alpha = 1
//                        self.signinButton.alpha = 1
//                        self.signinPassword.alpha = 1
//
//                        self.signinViewCredentials.layoutIfNeeded()
//                        self.signinViewCredentials.backgroundColor = self.signUpCredentialsView.backgroundColor
//
//                    }
//                    if initialPosY > (initialPosY + translation.y){
//
//                        self.signUpCredentialsView.alpha += 0.3
//                        self.signinLabel.alpha -= 0.25
//                        self.signinUsername.alpha -= 0.25
//                        self.signinButton.alpha -= 0.25
//                        self.signinPassword.alpha -= 0.1
//                        self.signinViewCredentials.layoutIfNeeded()
//                        self.signinViewCredentials.backgroundColor = UIColor(red: 237/255, green: 238/255, blue: 239/255, alpha: 1)
//                    }
//
//                    sender.setTranslation(CGPoint.zero, in: self.view)
//
//
//                }else{
//                    self.signinViewCredentials.frame.origin.y += translation.y
//                    self.signUpCredentialsView.frame = CGRect(x: self.signUpCredentialsView.frame.origin.x - (self.signUpCredentialsView.frame.origin.x/self.signUpCredentialsView.frame.origin.y)*translation.y*30/475, y: self.signUpCredentialsView.frame.origin.y + translation.y*30/475, width: (self.signUpCredentialsView.frame.height + translation.y*30/475)*(self.originalSignInViewRect?.width)!/(self.originalSignInViewRect?.height)!, height: self.signUpCredentialsView.frame.height+translation.y*30/475)
//                    self.setupSignInView()
//                    sender.setTranslation(CGPoint.zero, in: self.view)
//                }
//
//            }
//            break
//        case .ended:
//
//            DispatchQueue.main.async {
//
//                if sender.view!.tag == 0 {
//
//                    if (self.signUpCredentialsView.frame.origin.y - (self.originalSignUpViewRect?.origin.y)! >= 100)  {
//
//
//                        UIView.animate(withDuration: 0.6, delay: 0, options: [.curveEaseIn], animations: {
//
//                            self.signinViewCredentials.frame = CGRect(x: (self.originalSignUpViewRect?.origin.x)!, y: (self.originalSignUpViewRect?.origin.y)!, width: (self.originalSignUpViewRect?.width)!, height: (self.originalSignUpViewRect?.height)!)
//                            self.signinViewCredentials.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signinViewCredentials.frame.origin.y)
//
//                            self.signinLabel.isHidden = false
//
//
//                            self.signinUsername.frame = CGRect(x: 13, y: 170+15, width: self.signinViewCredentials.frame.width-26, height: 44)
//
//                            self.signinPassword.frame = CGRect(x: 13, y: 227+15, width: self.signinViewCredentials.frame.width-26, height: 44)
//
//
//                            self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinButton.frame.height-114, width: self.signinButton.frame.width-26, height: self.signinButton.frame.height)
//                            self.signinwithfbButton.frame = CGRect(x: self.signinwithfbButton.frame.origin.x, y: self.signinViewCredentials.frame.height-57, width: self.signinViewCredentials.frame.width-26, height: self.signinwithfbButton.frame.height)
//
//
//
//                            self.signinLabel.alpha = 1
//                        }, completion: { (action) in
//                            self.signUpCredentialsView.alpha = 0
//                            UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
//                                self.signupLabel.isHidden = true
//                                self.signUpCredentialsView.backgroundColor = UIColor(red: 237/255, green: 238/255, blue: 239/255, alpha: 1)
//
//                                self.signinViewCredentials.layoutIfNeeded()
//                            }, completion: { (action) in
//                                self.signUpCredentialsView.frame = self.originalSignInViewRect!
//                                self.setupSignInView()
//                                UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
//                                    self.signUpCredentialsView.alpha = 1
//
//                                }, completion: nil)
//                            })
//                        })
//
//                    }
//                    else{
//                        self.signinViewCredentials.frame = self.originalSignInViewRect!
//                        self.signUpCredentialsView.frame = self.originalSignUpViewRect!
//                        self.signUpCredentialsView.alpha = 1
//
//
//                        self.signinLabel.alpha = 0
//                        self.signinUsername.alpha = 0
//                        self.signinButton.alpha = 0
//                        self.signinPassword.alpha = 0
//                        self.signinViewCredentials.layoutIfNeeded()
//                    }
//
//                    self.signinLabel.frame = CGRect(x: self.signinLabel.frame.origin.x, y: self.signinLabel.frame.origin.y, width: self.signinViewCredentials.frame.width, height: self.signinLabel.frame.height)
//                    self.signinUsername.frame = CGRect(x: self.signinUsername.frame.origin.x, y: self.signinUsername.frame.origin.y, width: self.signinViewCredentials.frame.width-26, height: self.signinUsername.frame.height)
//                    self.signinPassword.frame = CGRect(x: self.signinPassword.frame.origin.x, y: self.signinPassword.frame.origin.y, width: self.signinViewCredentials.frame.width-26, height: self.signinPassword.frame.height)
//                    self.signinButton.frame = CGRect(x: self.signinButton.frame.origin.x, y: self.signinButton.frame.origin.y, width: self.signinViewCredentials.frame.width-26, height: self.signinButton.frame.height)
//                }else{
//                    if (self.signinViewCredentials.frame.origin.y - (self.originalSignInViewRect?.origin.y)! >= 100)  {
//
//                        UIView.animate(withDuration: 0.6, delay: 0, options: [.curveEaseInOut], animations: {
//                            self.signUpCredentialsView.frame = CGRect(x: (self.originalSignUpViewRect?.origin.x)!, y: (self.originalSignUpViewRect?.origin.y)!, width: (self.originalSignUpViewRect?.width)!, height: (self.originalSignUpViewRect?.height)!)
//                            self.signUpCredentialsView.frame.origin.y += (self.originalSignUpViewRect!.origin.y-self.signUpCredentialsView.frame.origin.y)
//                            self.setupSignInView()
//                            self.signupLabel.isHidden = false
//                        }, completion: { (action) in
//
//                            self.signinViewCredentials.alpha = 0
//
//                            UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
//                                self.signUpCredentialsView.backgroundColor = UIColor.white
//                                self.signinLabel.isHidden = true
//
//                            }, completion: { (action) in
//                                self.setupSignInView()
//                                UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
//                                    self.signinViewCredentials.alpha = 1
//
//                                }, completion: nil)
//
//                            })
//                        })
//
//
//
//
//
//                    }
//                }
//            }
//            break
//        default:
//            break
//        }
//
//
//    }
//
    
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
