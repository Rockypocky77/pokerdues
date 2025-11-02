//
//  Transaction.swift
//  Poker Dues
//
//  Created on 2024
//

import Foundation

struct Transaction: Identifiable, Codable {
    let id: UUID
    let payFrom: String
    let payTo: String
    let amount: Double
    let date: Date
    
    init(id: UUID = UUID(), payFrom: String, payTo: String, amount: Double, date: Date = Date()) {
        self.id = id
        self.payFrom = payFrom
        self.payTo = payTo
        self.amount = amount
        self.date = date
    }
    
    var description: String {
        return "\(payFrom) to \(payTo) : \(String(format: "%.2f", amount))"
    }
}

