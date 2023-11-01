//
//  secondViewController.swift
//  ankit project
//
//  Created by Ankit Singh on 28/10/23.
//

import UIKit
class secondViewController: UIViewController {
    var strName: String!
    var veggie : [String] = ["Paneer", "Rajma" , "Channa Masala", "Mutter Paneer" , "Dal Makhni", "Veg Biryani"]
    var nonveggie : [String] = ["Butter Chicken", "Fish Cury", "Egg Cury", "Chicekn Biryani" , "Prawns", "Chicken Tikka" ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = "Welcome \(strName!)!"
    }
    @IBOutlet weak var seg0: UISegmentedControl!
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBAction func seg(_ sender: Any) {
        var x = seg0.selectedSegmentIndex
        switch x {
        case 0:
            performSegue(withIdentifier: "3rd", sender: nil)
            img.image = UIImage(named: "veg")
        case 1:
            performSegue(withIdentifier: "4th", sender: nil)
            img.image = UIImage(named: "nonveg")
        default :
            img.image = UIImage(named: "foodie")
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "3rd" {
            var objdest1 = segue.destination as! thirdViewController
            objdest1.veg = veggie
        } else if segue.identifier == "4th"{
            var objdest2 = segue.destination as! fourthViewController
            objdest2.nonveg = nonveggie
        }
    }
    
    @IBAction func ratingBtn(_ sender: Any) {
        performSegue(withIdentifier: "5th", sender: nil)
    }
    
    
    
    

}
