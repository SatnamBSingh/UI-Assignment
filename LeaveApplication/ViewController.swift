//
//  ViewController.swift
//  Ui Assignment
//
//  Created by Captain on 24/01/20.
//
import UIKit

class ViewController: UIViewController{

    
    @IBAction func screen1row1btn(_ sender: Any) {
        let screen1vc = self.storyboard?.instantiateViewController(withIdentifier: "Screen1Row1VC") as! Screen1Row1VC
        navigationController?.pushViewController(screen1vc, animated: true)
    }
    
    @IBAction func column1row2(_ sender: Any) {
        let colum1vc = self.storyboard?.instantiateViewController(withIdentifier: "Column1row2VC") as! Column1row2VC
        navigationController?.pushViewController(colum1vc, animated: true)
    }
    
    @IBAction func row1column3(_ sender: Any) {
        let row1col3vc = self.storyboard?.instantiateViewController(withIdentifier: "Row1Col3VC") as! Row1Col3VC
        navigationController?.pushViewController(row1col3vc, animated: true)
    }
    
    @IBAction func row1colymn4(_ sender: Any) {
        let row1colmn4vc = self.storyboard?.instantiateViewController(withIdentifier: "Row1Col4VC") as! Row1Col4VC
        navigationController?.pushViewController(row1colmn4vc, animated: true)
    }
    
    
    @IBOutlet weak var leadingContraint: NSLayoutConstraint!
    @IBOutlet var ViewBackground: UIView!
    var showMenu = true;
    
    @IBAction func MenuBar(_ sender: UIBarButtonItem)
    {
        if(showMenu)
        {
            leadingContraint.constant = -240
            ViewBackground.backgroundColor = UIColor.white
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
        else
        {
            leadingContraint.constant = 0
            ViewBackground.backgroundColor = UIColor.darkGray
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
        }
        showMenu = !showMenu
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}



}


