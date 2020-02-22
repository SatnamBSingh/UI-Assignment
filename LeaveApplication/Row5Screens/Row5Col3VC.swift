//
//  Row5Col3VC.swift
//  Ui Assignment
//
//  Created by Captain on 07/02/20.
//

import UIKit

class Row5Col3VC: UIViewController {

    
    @IBOutlet weak var signinCredentials: UIView!
    @IBAction func backMenu(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        signinCredentials.backgroundColor = UIColor.white
        signinCredentials.layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        signinCredentials.layer.shadowOffset = CGSize(width: 1, height: 1)
        signinCredentials.layer.shadowOpacity = 1.0
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
