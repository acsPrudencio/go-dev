//
//  Service.swift
//  DesafioWhatsApp 25-03-2022
//
//  Created by Idwall Go Dev 014 on 26/03/22.
//

import Foundation


enum UserError: Error {
    case urlInvalid
    case noProcessData
    case noDataAvailable
}

protocol ServiceProtocol{
    func getUsers(completion: @escaping(Result<[User], UserError>) -> Void)
}

class Service: ServiceProtocol {
    
    
    
    let session = URLSession.shared
    
    let url = "https://run.mocky.io/v3/fa446ac2-0e17-4d41-a1eb-52e2cb979876"
    
    static var shared: Service = {
        let instance = Service()
        return instance
    }()
    
    func getUsers(completion: @escaping(Result<[User], UserError>) -> Void) {
        guard let url = URL(string: url) else { return completion(.failure(.urlInvalid))}
    
        let dataTask = session.dataTask(with: url) { data, _ , _ in
            do{
                guard let jsonData = data else { return completion(.failure(.noDataAvailable))}
            
                let decoder = JSONDecoder()
                
                let userResponse  = try decoder.decode([User].self, from: jsonData)
            
                completion(.success(userResponse))
            }catch{
                completion(.failure(.noProcessData))
            }
        }
        
        dataTask.resume()
    }
}
