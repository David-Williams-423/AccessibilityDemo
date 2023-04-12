//
//  ContentView.swift
//  AccessibilityDemo
//
//  Created by David Williams on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var fontSize = 30.0
    var body: some View {
        VStack {
            CellView(fontSize: $fontSize)
            CellView(fontSize: $fontSize)
            VStack(alignment: .leading) {
                Text("Font Size")
                    .bold()
                Slider(value: $fontSize, in: 20...40) {
                    Text("Font Size")
                }
            }
            .padding()
            .background(.regularMaterial)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
