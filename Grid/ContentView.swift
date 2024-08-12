//
//  ContentView.swift
//  Grid
//
//  Created by R. Kukuh on 12/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid(alignment: .top, horizontalSpacing: 20, verticalSpacing: 40) {
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
            
            GridRow(alignment: .bottom) {
                Text("I’m on the bottom of the view!")
                Color.red
            }
        }
    }
}

#Preview {
    ContentView()
}
