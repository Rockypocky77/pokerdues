//
//  PlayerStat.swift
//  Poker Dues
//
//  Created on 2024
//

import Foundation

struct PlayerStat: Identifiable, Codable {
    let id: UUID
    let date: Date
    let playerName: String
    let netAmount: Double
    
    init(id: UUID = UUID(), date: Date = Date(), playerName: String, netAmount: Double) {
        self.id = id
        self.date = date
        self.playerName = playerName
        self.netAmount = netAmount
    }
}

