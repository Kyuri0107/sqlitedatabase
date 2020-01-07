//
//  dbmanage.swift
//  coredataapplication11
//
//  Created by COE-009 on 07/01/20.
//  Copyright © 2020 COE-009. All rights reserved.
//
import UIKit

class ManageDB{
    var dbLocation = ""
    //to manage or point to db
    var db:OpaquePointer?
    
    
        init() {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        self.dbLocation = appDel.dbpath
        
    }
    
    func IsOpen ()-> Bool {
        
        if(sqlite3_open(self.dbLocation, &db) == SQLITE_OK)
        {
            return true
        }
        
        
        return false
    }
    
    func RunCommand(cmdText:String) -> Bool {
        
        if(IsOpen())
        {
            var stmt:OpaquePointer?
            if(sqlite3_prepare_v2(db, cmdText, -1, &stmt, nil) == SQLITE_OK)
            {
                sqlite3_step(stmt)
                sqlite3_finalize(stmt)
                sqlite3_close(db)
                return true
            }
        }
        
        
        
        return false
    }
    
    func RunQuery(queryText:String) -> [[String:Any]] {
        var list = [[String:Any]]()
        
        if(IsOpen())
        {
            var stmt:OpaquePointer?
            if(sqlite3_prepare_v2(db, queryText, -1, &stmt, nil) == SQLITE_OK)
            {
                sqlite3_step(stmt)
                sqlite3_finalize(stmt)
                sqlite3_close(db)
            }
        }
        
        
        
        return list
    }
    
}

