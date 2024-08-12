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
            }
        }
    }
}

#Preview {
    ContentView()
}
