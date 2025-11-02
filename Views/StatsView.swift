//
//  StatsView.swift
//  Poker Dues
//
//  Created on 2024
//

import SwiftUI

struct StatsView: View {
    @ObservedObject var viewModel: GameViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.overallStats.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "chart.bar.doc.horizontal")
                            .font(.system(size: 60))
                            .foregroundColor(.gray.opacity(0.5))
                        Text("No statistics yet")
                            .font(.headline)
                            .foregroundColor(.gray)
                        Text("Statistics will appear here after calculations")
                            .font(.subheadline)
                            .foregroundColor(.gray.opacity(0.7))
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    List {
                        ForEach(viewModel.overallStats.reversed()) { stat in
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Text(stat.playerName)
                                        .font(.headline)
                                    Spacer()
                                    Text(String(format: "%.2f", stat.netAmount))
                                        .font(.headline)
                                        .foregroundColor(stat.netAmount >= 0 ? .green : .red)
                                }
                                Text(stat.date, style: .date)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationTitle("Overall Stats")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Done") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Clear") {
                        viewModel.clearStats()
                    }
                    .disabled(viewModel.overallStats.isEmpty)
                    .foregroundColor(.red)
                }
            }
        }
    }
}

