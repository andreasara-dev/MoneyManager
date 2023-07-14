//
//  UserData.swift
//  MoneyManager
//
//  Created by andreasara-dev on 02/07/23.
//

import Foundation

struct UserData: Codable {
    var user: User
    var cards: [Card]
    
    static let example = UserData(user: .emptyUser, cards: [])
}
