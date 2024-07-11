//
//  User.swift
//  Masterclass
//
//  Created by Danilo Martins on 24/07/24.
//

import Foundation

struct User:Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
