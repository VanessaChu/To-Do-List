//
//  SecondViewController.swift
//  To Do List
//
//  Created by Vanessa Chu on 2017-06-25.
//  Copyright © 2017 Vanessa Chu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var itemField: UITextField!
    
    @IBAction func addButton(_ sender: Any) {
        
        let itemObject = UserDefaults.standard.object(forKey: "item")
        
        if itemField.text != ""{
            var item: [String]
            if let tempItem = itemObject as? [String]{
                item = tempItem
                item.append(itemField.text!)
            }else{
                item = [itemField.text!]
            }
            UserDefaults.standard.set(item, forKey:"item")
            print(item)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

