//
//  Row5Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 07/02/20.
//

import UIKit

class Row5Col4VC: UIViewController {

    
    @IBOutlet weak var signUpCredentialsView: UIView!
    @IBOutlet weak var signupLabel: UILabel!
    @IBOutlet weak var fullnameSignup: UITextField!
    @IBOutlet weak var lastnameSignup: UITextField!
    @IBOutlet weak var emailSignup: UITextField!
    @IBOutlet weak var passwordSignup: UITextField!
    @IBOutlet weak var reenterpasswrdSignup: UITextField!
    @IBOutlet weak var signUpbutton: UIButton!
    @IBOutlet weak var signupwithfbButton: UIButton!
    
    
    
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
