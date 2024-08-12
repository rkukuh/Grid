//
//  ContentView.swift
//  Grid
//
//  Created by R. Kukuh on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.mint
                Color.orange
                Color.pink
            }
            
            GridRow {
                Color.blue
                Color.teal
                    .gridCellColumns(2)
            }
            
            GridRow {
                Text("Text inside grid row")
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("Another text inside grid row")
            }
        }
    }
}

#Preview {
    ContentView()
}
