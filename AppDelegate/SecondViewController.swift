//
//  SecondViewController.swift
//  AppDelegate
//
//  Created by R Shantha Kumar on 11/26/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var appDelRef2:AppDelegate?
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
   // saving data in the object
    
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        
        
        dismiss(animated: true, completion: nil)
        
        
        appDelRef2?.data["msg2"] = textField2.text
        
        
        
        
    }
    
    //presenting data on the label
    
    override func viewDidAppear(_ animated: Bool) {
        if(appDelRef2?.data["msg"] != nil){
            
            label2.text = appDelRef2?.data["msg"]
            
            
            
        }
        
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appDelRef2 = UIApplication.shared.delegate as! AppDelegate
        
        
        // Do any additional setup after loading the view.
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
