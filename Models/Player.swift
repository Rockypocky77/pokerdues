//
//  Player.swift
//  Poker Dues
//
//  Created on 2024
//

import Foundation

struct Player: Identifiable, Codable {
    let id: UUID
    var name: String
    var net: Double
    
    init(id: UUID = UUID(), name: String, net: Double) {
        self.id = id
        self.name = name
        self.net = net
    }
}

