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
    @IBAction func row2col1(_ sender: Any) {
        let row2col1vc = self.storyboard?.instantiateViewController(withIdentifier: "Row2Col1VC") as! Row2Col1VC
        navigationController?.pushViewController(row2col1vc, animated: true)
    }
    @IBAction func row2col2(_ sender: Any) {
        let row2col2vc = self.storyboard?.instantiateViewController(withIdentifier: "Row2col2VC") as! Row2col2VC
        navigationController?.pushViewController(row2col2vc, animated: true)
    }
    
    
    @IBAction func Row2Col3(_ sender: Any) {
        let row3col3vc = self.storyboard?.instantiateViewController(withIdentifier: "Row2col3VC") as! Row2col3VC
        navigationController?.pushViewController(row3col3vc, animated: true)
    }
    
    
    @IBAction func row2col4(_ sender: Any) {
        let row2col4vc = self.storyboard?.instantiateViewController(withIdentifier: "Row2col4VC") as! Row2col4VC
        navigationController?.pushViewController(row2col4vc, animated: true)
    }
    
    
    @IBAction func Row3Col1(_ sender: Any) {
    let row3col1vc = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col1VC") as! Row3Col1VC
        navigationController?.pushViewController(row3col1vc, animated: true)
    
    }
    
    
    @IBAction func Row3Col2(_ sender: Any) {
    let row3col2vc = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col2VC") as! Row3Col2VC
        navigationController?.pushViewController(row3col2vc, animated: true)
    
    }
    
    
    @IBAction func Row3Col3(_ sender: Any) {
        let row3col3vc = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col3VC") as! Row3Col3VC
        navigationController?.pushViewController(row3col3vc, animated: true)
    }
    
    
    @IBAction func Row3Col4Vc(_ sender: Any) {
        let row3col4vc = self.storyboard?.instantiateViewController(withIdentifier: "Row3Col4VC") as! Row3Col4VC
        navigationController?.pushViewController(row3col4vc, animated: true)
    }
    
    
    
    @IBAction func Row4Col1Vc(_ sender: Any) {
        let row4col1vc = self.storyboard?.instantiateViewController(withIdentifier: "Row4Col1VC") as! Row4Col1VC
        navigationController?.pushViewController(row4col1vc, animated: true)
    }
    
    
    @IBAction func Row4col2VC(_ sender: Any) {
        let row4col2vc = self.storyboard?.instantiateViewController(withIdentifier: "Row4Col2MainVC") as! Row4Col2MainVC
        navigationController?.pushViewController(row4col2vc, animated: true)
    }
    
    
    @IBAction func Row4Col3Vc(_ sender: Any) {
        let row4col3vc = self.storyboard?.instantiateViewController(withIdentifier: "Row4Col3VC") as! Row4Col3VC
        navigationController?.pushViewController(row4col3vc, animated: true)
    }
    
    
    
    @IBAction func Row4Col4Vc(_ sender: Any) {
        let row4col4vc = self.storyboard?.instantiateViewController(withIdentifier: "Row4Col4VC") as! Row4Col4VC
        navigationController?.pushViewController(row4col4vc, animated: true)
    }
    
    
    @IBOutlet weak var leadingContraint: NSLayoutConstraint!
    @IBOutlet var ViewBackground: UIView!
    var showMenu = true;
    @IBAction func MenuBar(_ sender: UIBarButtonItem)
    {
        if(showMenu)
        {
        ViewBackground.isHidden = false
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
       ViewBackground.isHidden = true
    }
    
    
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}
    
}


