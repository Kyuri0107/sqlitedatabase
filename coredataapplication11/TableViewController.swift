//
//  TableViewController.swift
//  coredataapplication11
//
//  Created by COE-009 on 30/12/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class TableViewController: UIViewControlle{
     
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return arrcount.count
    }
    
    
   
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexpath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexpath) as! MyTableViewCell
      
        //cell.txt1.text = arrcount[indexpath.row]["Name"] as? String
      
       // cell.txt2.text = arrcount[indexpath.row]["EmailID"] as? String
        
        
        // Configure the cell...
        
      //  return cell
    //}

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func savedata(nm:String, c:String)
    {
        if self.listData == nil
        {
            let infoEntity = NSEntityDescription.entity(forEntityName: "Mydata", in: self.managedContextObject!)
            
            self.managedObject = NSManagedObject(entity: infoEntity!, insertInto: self.managedContextObject!)
            
            self.managedObject.setValue(nm, forKey: "name")
            self.managedObject.setValue(c, forKey: "emailid")
            
            do{
                try self.managedContextObject.save()
                print("Data Saved!")
            }
            catch let err as NSError{
                print(err.localizedDescription)
            }
        }
        else
        {
            
            
            self.listData().setValue(nm, forKey: "name")
            self.listData().setValue(c, forKey: "emailid")
            listData()
            do{
                try self.managedContextObject.save()
                print("Data updates!")
            }
            catch let err as NSError{
                print(err.localizedDescription)
            }
            self.listData = nil
        }
        
    }
    
    
    //step 5
    func listData(){
        
        
        let fetchReq = NSFetchRequest<NSFetchRequestResult>.init(entityName: "Mydata")
        
        do{
            self.list = try self.managedContextObject.fetch(fetchReq) as! [NSManagedObject]
            for item in self.list{
                print("Name:\(item.value(forKey: "name")!) and Emailid:\(item.value(forKey: "emailid")!)")
            }
        }
        catch{
            print("Error in fetch")
        }
        
        tableView.reloadData()
        
    }
    

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
}
