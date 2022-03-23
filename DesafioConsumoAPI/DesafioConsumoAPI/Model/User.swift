//
//  User.swift
//  DesafioConsumoAPI
//
//  Created by Idwall Go Dev 014 on 23/03/22.
//
//  // This file was generated from JSON Schema using quicktype, do not modify it directly.
//  To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)


import Foundation

// MARK: - WelcomeElement
struct User: Codable {
    let id: Int
    let name: String
    let photo: String
    let company: Company
}

// MARK: - Company
struct Company: Codable {
    let name: String
}

//typealias Welcome = [User]
