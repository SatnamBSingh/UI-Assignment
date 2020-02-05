//
//  Row4Col1VC.swift
//  Ui Assignment
//
//  Created by Captain on 05/02/20.
//

import UIKit

class Row4Col1VC: UIViewController {

    var rememberMe: Bool = false

    
    @IBAction func remembermeButton(_ sender: Any) {
            rememberMe.toggle()
        
            if rememberMe{
                (sender as AnyObject).setImage(UIImage(named: "icons8-tick-box-20"), for: .normal)
            }else {
                (sender as AnyObject).setImage(UIImage(named: "icons8-tick-box-20"), for: .normal)
            }
    }
    
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var usernameTxtfld: UITextField!
    @IBOutlet weak var passwordTxtfld: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        usernameTxtfld.attributedPlaceholder = NSAttributedString(string: "Username", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
        passwordTxtfld.attributedPlaceholder = NSAttributedString(string: "Password", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
       // usernameTxtfld.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //passwordTxtfld.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        // Do any additional setup after loading the view.
    }
    

//    
//}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
