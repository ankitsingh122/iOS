//
//  fourthViewController.swift
//  ankit project
//
//  Created by Ankit Singh on 29/10/23.
//

import UIKit

class fourthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var nonveg : [String] = []
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nonveg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellobj1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cellobj1.textLabel?.text = nonveg[indexPath.row]
        cellobj1.imageView?.image = UIImage(named: "nonveg")
        return cellobj1
    }
    var value1 : String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        value1 = nonveg[indexPath.row]
        let alert1 = UIAlertController(title: "Order Preparing", message: value1, preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "Thank You!", style: .default, handler:nil))
        self.present(alert1, animated: true, completion:nil)
    }
    

   
    
    
    
    
}
