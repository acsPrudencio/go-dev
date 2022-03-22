//
//  dados.swift
//  Desafio21-03-2022
//
//  Created by Idwall Go Dev 014 on 21/03/22.
//

import Foundation


struct Dados: Codable {
    let id: Int
    let name: String
    let photo: String
    let company: Company
}

struct Company: Codable {
    let name: String
}
