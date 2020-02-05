//
//  Row3Col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 04/02/20.
//

import UIKit

class Row3Col4VC: UIViewController {

    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        let signupscreen = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col3SignupVC") as! Row3Col3SignupVC
        navigationController?.pushViewController(signupscreen, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
navigationController?.navigationBar.isHidden = true
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
