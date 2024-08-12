//
//  ContentView.swift
//  Grid
//
//  Created by R. Kukuh on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.white
    
    let columnLayout = Array(repeating:GridItem(), count: 3)
    
    let allColors: [Color] = [
        .pink, .red, .orange, .yellow, .green, .mint, .teal,
            .cyan, .blue, .indigo, .purple, .brown, .gray
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columnLayout) {
                ForEach(allColors.indices, id: \.self) { index in
                    Button {
                        selectedColor = allColors[index]
                        
                        print(selectedColor)
                    } label: {
                        RoundedRectangle(cornerRadius: 4.0)
                            .aspectRatio(1.0, contentMode: ContentMode.fit)
                            .foregroundColor(allColors[index])
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
