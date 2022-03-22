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

protocol managedProtocol {
    func getPersons() -> [Person]
}

protocol managedSaveProtocol {
    func save(person: Person, onCompletionHandler: onCompletionHandler)
}

protocol managedDeleteProtocol {
    func delete(uuid: String, onCompletionHandler: onCompletionHandler)
}

class ManagedObjectContext: managedProtocol, managedSaveProtocol, managedDeleteProtocol {
    
    private let entity = "Users"
    
    static var shared: ManagedObjectContext = {
        let intance = ManagedObjectContext()
        return intance
    }()
    
    func getContext() -> NSManagedObjectContext {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
        
    }
    
    func getPersons() -> [Person] {
        
        var listPerson: [Person] = []
        
        do {
            
            let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: entity)
            
            guard let persons = try getContext().fetch(fetchRequest) as? [NSManagedObject] else { return listPerson }
            
            for item in persons {
                
                if let id = item.value(forKey: "id") as? UUID,
                   let name = item.value(forKey: "name") as? String,
                   let lastName = item.value(forKey: "lastName") as? String,
                   let age = item.value(forKey: "age") as? Int {
                    
                    let person = Person(id: id, name: name, lastName: lastName, age: age)
                    
                    listPerson.append(person)
                }
                
            }
            
        } catch {
            print("Error with request: \(error)")
        }
        
        return listPerson
    }
    
    
    func save(person: Person, onCompletionHandler: (String) -> Void) {
        
        let context = getContext()
        
        guard let entity = NSEntityDescription.entity(forEntityName: entity, in: context) else { return }
        
        let transaction = NSManagedObject(entity: entity, insertInto: context)
        
        transaction.setValue(person.id, forKey: "id")
        transaction.setValue(person.name, forKey: "name")
        transaction.setValue(person.lastName, forKey: "lastName")
        transaction.setValue(person.age, forKey: "age")
        
        do {
            
            try context.save()
            
            onCompletionHandler("Save Sucess")
            
        } catch let error as NSError {
            print("Could not save \(error.localizedDescription)")
        }
        
    }
    
    func delete(uuid: String, onCompletionHandler: (String) -> Void) {
        
        let context = getContext()
        
        let predicate = NSPredicate(format: "id == %@", "\(uuid)")
        
        let fethRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: entity)
        fethRequest.predicate = predicate
        
        
        do {
            
            let fetchResults = try context.fetch(fethRequest) as! [NSManagedObject]
            
            if let entityDelete = fetchResults.first {
                context.delete(entityDelete)
            }
            
            try context.save()
            
            onCompletionHandler("Delete Sucess")
            
        } catch let error as NSError {
            print("Fatch failed \(error.localizedDescription)")
        }
        
    }
}
