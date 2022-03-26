//
//  User.swift
//  DesafioWhatsApp 25-03-2022
//
//  Created by Idwall Go Dev 014 on 26/03/22.
//

import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let picture: String
    let latest_timestamp: String
    let lastChat: String
}
