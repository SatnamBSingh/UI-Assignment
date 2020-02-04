//
//  Row3Col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 04/02/20.
//

import UIKit

class Row3Col3VC: UIViewController {

    
    @IBOutlet weak var signupButton: UIButton!
    @IBAction func backbutoon(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Signupbutton(_ sender: Any) {
        let row3col3signupvc = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col3SignupVC") as! Row3Col3SignupVC
        navigationController?.pushViewController(row3col3signupvc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        signupButton.backgroundColor = UIColor.white
        signupButton.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        signupButton.layer.shadowOffset = CGSize(width: 1, height: 1)
        signupButton.layer.shadowOpacity = 1.0
      
        
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
