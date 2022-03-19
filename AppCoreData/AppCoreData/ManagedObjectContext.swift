//
//  ManagedObjectContext.swift
//  AppCoreData
//
//  Created by Idwall Go Dev 014 on 17/03/22.
//

import Foundation
import UIKit
import CoreData

typealias onCompletionHandler = (String) -> Void

protocol managedProtocol{
    func getPersons() -> [Person]
}
protocol managedSaveProtocol{
    func save(person: Person, onCompletionHandler: onCompletionHandler)
}
protocol managedDeleteProtocol{
    func delete(uuid: String, onCompletionHandler: onCompletionHandler)
}

class ManagedObjectContext: managedProtocol, managedSaveProtocol, managedDeleteProtocol{
    
    private let entity = "Users"
    
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    func getPersons() -> [Person] {
        var listperson: [Person] = []
        
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: entity)
        
        do{
            guard let persons = try getContext().fetch(fetchRequest) as? [NSManagedObject] else { return listperson }
            
            for item in persons {
                if let id = item.value(forKey: "id") as? UUID,
                let name = item.value(forKey: "name") as? String,
                let lastName = item.value(forKey: "lastname") as? String,
                   let age = item.value(forKey: "age") as? Int{
                    
                    let person = Person(id: id, name: name, lastName: lastName, age: age)
                    listperson.append(person)
                }
            }
            
        }catch let error as NSError{
            print("Error in request \(error)")
        }
        
        
        return listperson
    }
    
    func save(person: Person, onCompletionHandler: (String) -> Void) {
        let context = getContext()
                
                guard let entity = NSEntityDescription.entity(forEntityName: entity, in: context) else { return }
                
                let transaction = NSManagedObject(entity: entity, insertInto: context)
                
                transaction.setValue(person.id, forKey: "id")
                transaction.setValue(person.name, forKey: "name")
                transaction.setValue(person.lastName, forKey: "lastName")
                transaction.setValue(person.age, forKey: "age")
                
                do{
                    try context.save()
                    onCompletionHandler("Save Sucess")
                }catch let error as NSError{
                    print("Could not save \(error.localizedDescription)")
                }
    }
    
    func delete(uuid: String, onCompletionHandler: (String) -> Void) {
        
        let context = getContext()
        
        let predicate = NSPredicate(format: "id == %@", "\(uuid)")
        
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: entity)
        
        do{
            
            let fetchRequest = try context.fetch(fetchRequest) as? [NSManagedObject]

            if let entityDelete = fetchRequest.
        }catch let error as NSError{
            print("Fatch failed \(error.localizedDescription)")
        }
       
            
}
    

}
