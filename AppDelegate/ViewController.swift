//
//  ViewController.swift
//  AppDelegate
//
//  Created by R Shantha Kumar on 11/26/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    var appDelRef:AppDelegate?
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    
    // action for sending data
    
    @IBAction func buttonAction(_ sleter: UIButton) {
        
        let target = storyboard?.instantiateViewController(withIdentifier: "svc") as! SecondViewController
       
        
        appDelRef?.data["msg"] = textField.text
        
        
        present(target, animated: true, completion: nil)
        
    }
    
    
    //presenting data on the label
    
    override func viewDidAppear(_ animated: Bool) {
        if(appDelRef?.data["msg2"] != nil){
            
            label1.text = appDelRef?.data["msg2"]
            
        }

    }
    

    
    
    
    override func viewDidLoad() {
          super.viewDidLoad()
        
         appDelRef = UIApplication.shared.delegate as! AppDelegate
        
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

