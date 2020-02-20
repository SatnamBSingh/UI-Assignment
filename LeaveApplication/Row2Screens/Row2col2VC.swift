//
//  Row2col2VC.swift
//  Ui Assignment
//
//  Created by Captain on 28/01/20.
//

import UIKit

class Row2col2VC: UIViewController {

    
    
    @IBOutlet weak var uploadimage: UIImageView!
    @IBOutlet weak var signin: UIButton!
    @IBOutlet weak var signup: UIButton!
    @IBOutlet weak var backview2: UIView!
    @IBOutlet weak var backview1: UIView!
    
    @IBAction func backbutton(_ sender: Any) {
    navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var fullnametxtfld: UITextField!
    @IBOutlet weak var lastnametxtfld: UITextField!
    @IBOutlet weak var emailtxtfld: UITextField!
    @IBOutlet weak var passwordtxtfld: UITextField!
    @IBOutlet weak var reentertxtfld: UITextField!
    @IBOutlet weak var createanaccountbttn: UIButton!
    @IBOutlet weak var agreelabel: UILabel!
    @IBAction func signupbuttn(_ sender: Any) {
       // if signup.isSelected == false{
           // signup.setTitleColor(UIColor.lightGray, for: .normal)
        signup.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .disabled)
        signup.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .selected)
        uploadimage.layer.cornerRadius = uploadimage.frame.width/2
        uploadimage.clipsToBounds = true
        backview1.isHidden = false
        backview2.isHidden = true
           // signup.isSelected = true
        //}
//        else{//
//            //signup.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//            signup.isSelected = false
//        }
        //loadView()
    }
    
    @IBAction func signinbuttn(_ sender: Any) {
        signin.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .selected)
        signin.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .disabled)

        uploadimage.isHidden = true
        backview1.isHidden = true
        backview2.isHidden = false
       // uploadimage.layer.cornerRadius = uploadimage.frame.width/2
        //uploadimage.clipsToBounds = true
        loadView()
    }
    override func viewWillAppear(_ animated: Bool) {
        backview1.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        backview2.isHidden = true
   navigationController?.navigationBar.isHidden = true
        uploadimage.layer.cornerRadius = uploadimage.frame.width/2
        uploadimage.clipsToBounds = true
        var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }

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
