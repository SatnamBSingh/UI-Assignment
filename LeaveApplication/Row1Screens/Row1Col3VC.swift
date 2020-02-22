//
//  Row1Col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 27/01/20.
//

import UIKit

class Row1Col3VC: UIViewController {

    @IBOutlet var fullnametxtfld: UITextField!
    @IBOutlet var lastnametxtfld: UITextField!
    @IBOutlet var emailtxtfld: UITextField!
    @IBOutlet var passwordtxtfld: UITextField!
    @IBOutlet var reenterpsswrdtxtfld: UITextField!
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
     //   myTextField.attributedPlaceholder = NSAttributedString(string: "placeholder text",attributes: [NSForegroundColorAttributeName: UIColor.yellow])
        
        fullnametxtfld.attributedPlaceholder = NSAttributedString(string: "Fullname", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
        lastnametxtfld.attributedPlaceholder = NSAttributedString(string: "Lastname", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
        emailtxtfld.attributedPlaceholder = NSAttributedString(string: "Email", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
        passwordtxtfld.attributedPlaceholder = NSAttributedString(string: "Password", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])
        reenterpsswrdtxtfld.attributedPlaceholder = NSAttributedString(string: "ReEnter Password", attributes:[NSAttributedStringKey.foregroundColor: UIColor.white])

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
