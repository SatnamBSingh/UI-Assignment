//
//  Column1row2VC.swift
//  Ui Assignment
//
//  Created by Captain on 24/01/20.
//

import UIKit
import TPKeyboardAvoidingSwift
class Column1row2VC: UIViewController {

    
    @IBAction func backbutton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBOutlet weak var scrollCredentials: TPKeyboardAvoidingCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.tintColor = UIColor.white
        self.navigationController!.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
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
