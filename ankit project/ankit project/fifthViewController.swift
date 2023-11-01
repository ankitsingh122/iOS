//
//  fifthViewController.swift
//  ankit project
//
//  Created by himanshu pandey on 31/10/23.
//

import UIKit

class fifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var thanks: UILabel!
    
    @IBOutlet weak var ratingImg: UIImageView!
    @IBOutlet weak var rateLbl: UILabel!
    @IBOutlet weak var rate: UISlider!
    @IBAction func rating(_ sender: Any) {
        let x = Int(rate.value)
        switch x {
        case 1:
            thanks.text = "Poor"
            ratingImg.image = UIImage(named: "poor")
        case 2:
            thanks.text = "Good"
            ratingImg.image = UIImage(named: "good")
        case 3:
            thanks.text = "Average"
            ratingImg.image = UIImage(named: "average")
        case 4:
            thanks.text = "Great"
            ratingImg.image = UIImage(named: "great")
        case 5:
            thanks.text = "Perfect"
            ratingImg.image = UIImage(named: "perfect")
        default:
            thanks.text  = "N/A"
            ratingImg.image = UIImage(named: "foodie")
            
            
        }
        
        
    }
    
    
    
    
    
    

}
