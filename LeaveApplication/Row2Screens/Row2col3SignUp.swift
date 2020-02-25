//
//  Row2col3SignUp.swift
//  Ui Assignment
//
//  Created by Captain on 30/01/20.
//

import UIKit
class Row2col3SignUp: UIViewController {

    @IBOutlet weak var signupCredentials: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupCredentials.backgroundColor = UIColor.white
        signupCredentials.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        signupCredentials.layer.shadowOffset = CGSize(width: 1, height: 1)
        signupCredentials.layer.shadowOpacity = 1.0
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
