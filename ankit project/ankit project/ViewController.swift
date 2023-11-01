//
//  ViewController.swift
//  ankit project
//
//  Created by Ankit Singh on 28/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var contactLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!

    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var contactTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBAction func submitbtn(_ sender: Any) {
        if nameTxt.text != "" {
            performSegue(withIdentifier: "2nd", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "2nd" {
            var objdest = segue.destination as! secondViewController
            objdest.strName = nameTxt.text
        }
    }
    }
    
    








