//
//  AddPlayerView.swift
//  Poker Dues
//
//  Created on 2024
//

import SwiftUI

struct AddPlayerView: View {
    @ObservedObject var viewModel: GameViewModel
    @Environment(\.dismiss) var dismiss
    
    @State private var playerName = ""
    @State private var playerNet: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Player Information")) {
                    TextField("Player Name", text: $playerName)
                    TextField("Net Amount", text: $playerNet)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Note")) {
                    Text("Positive = owed money\nNegative = owes money")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Add Player")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        if let net = Double(playerNet) {
                            viewModel.addPlayer(name: playerName, net: net)
                            dismiss()
                        }
                    }
                    .disabled(playerName.isEmpty || Double(playerNet) == nil)
                }
            }
        }
    }
}

