//
//  AddViewController.swift
//  inventoryapp
//
//  Created by Dharmendra Valiya on 05/13/20.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var model: UITextField!
    @IBOutlet var units: UITextField!
    @IBOutlet var make: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addButton_click(_ sender: AnyObject) {
        let i = InventoryItem(name: model.text!, units: Int(units.text!)!, manufacturerName: make.text!, dateAdded: String(describing: Date()))
        InventoryManager.add(item: i)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
