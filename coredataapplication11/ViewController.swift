//
//  ViewController.swift
//  coredataapplication11
//
//  Created by COE-009 on 30/12/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit
import CoreData

class ViewController:UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    
   
    // code for pickerview
    var arr = ["India","Pakistan","Australia","Japan","Spenish","America","Canada"]
    
    
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return self.arr[row]
    }
    
    
  

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
 

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


