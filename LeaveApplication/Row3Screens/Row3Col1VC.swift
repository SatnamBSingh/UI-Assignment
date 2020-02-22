//
//  Row3Col1VC.swift
//  Ui Assignment
//
//  Created by Captain on 01/02/20.
//

import UIKit

class Row3Col1VC: UIViewController {

    
    @IBAction func backbuton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var addinfoview: UIView!
    @IBOutlet weak var uploadimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        uploadimage.layer.cornerRadius = uploadimage.frame.width/2
        uploadimage.clipsToBounds = true
        
        addinfoview.layer.shadowColor = UIColor.lightGray.cgColor
        addinfoview.layer.shadowOffset = CGSize(width: 1, height: 1)
        addinfoview.layer.shadowOpacity  = 1.0
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
