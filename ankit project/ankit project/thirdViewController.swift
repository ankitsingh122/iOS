//
//  thirdViewController.swift
//  ankit project
//
//  Created by Ankit Singh on 29/10/23.
//

import UIKit

class thirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var veg:[String] = []
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellobj = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cellobj.textLabel?.text = veg[indexPath.row]
        cellobj.imageView?.image = UIImage(named: "veg")
        return cellobj
    }
    var value : String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        value = veg[indexPath.row]
        let alert = UIAlertController(title: "Order preparing", message: value, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Thank You!", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
    
    
}
