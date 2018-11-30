//
//  ViewController+CoreData.swift
//  Projeto SAP
//
//  Created by Lucas Bitar on 30/11/18.
//  Copyright © 2018 Lucas Bitar. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    
    var managedObjectContext : NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
          return appDelegate.persistentContainer.viewContext
    }
}
