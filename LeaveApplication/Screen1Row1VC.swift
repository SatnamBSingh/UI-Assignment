//
//  Screen1Row1VC.swift
//  Ui Assignment
//
//  Created by Captain on 24/01/20.
//

import UIKit

class Screen1Row1VC: UIViewController {

    
    
    @IBOutlet var imageviewscreen1: UIImageView!
    
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        //self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageviewscreen1.layer.cornerRadius = imageviewscreen1.frame.size.height/2
//        imageviewscreen1.layer.borderWidth = 0
//        imageviewscreen1.layer.masksToBounds = true
//        imageviewscreen1.clipsToBounds = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
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
