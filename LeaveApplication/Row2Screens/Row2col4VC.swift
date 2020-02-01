//
//  Row2col4VC.swift
//  Ui Assignment
//
//  Created by Captain on 29/01/20.
//

import UIKit

class Row2col4VC: UIViewController {

    @IBOutlet weak var camimageview: UIImageView!
    @IBAction func sidemenubutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        camimageview.layer.cornerRadius = camimageview.frame.width/2
        //camimageview.layer.cornerRadius = 20
        camimageview.clipsToBounds = true
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
