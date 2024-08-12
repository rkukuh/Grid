//
//  ContentView.swift
//  Grid
//
//  Created by R. Kukuh on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    let columnLayout = Array(repeating: GridItem(.fixed(75), spacing: 20, alignment: .center),
                             count: 3)
    
    let allColors: [Color] = [
        .pink, .red, .orange, .yellow, .green, .mint, .teal,
            .cyan, .blue, .indigo, .purple, .brown, .gray
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columnLayout) {
                ForEach(allColors.indices, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 8.0)
                        .aspectRatio(1, contentMode: ContentMode.fit)
                        .foregroundColor(allColors[index])
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
