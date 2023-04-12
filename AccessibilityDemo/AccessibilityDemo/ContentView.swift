//
//  ContentView.swift
//  AccessibilityDemo
//
//  Created by David Williams on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    @State var fontSize = 30.0
    var sizeDescription: String {
        if fontSize < 25 {
            return "Too small"
        } else if fontSize > 35 {
            return "Too big"
        } else {
            return "OK"
        }
    }
    var body: some View {
        VStack {
            Title()

            Spacer()

            CellView(fontSize: $fontSize)
            CellView(fontSize: $fontSize)
            CellView(fontSize: $fontSize)
            
            Spacer()

            VStack(alignment: .leading) {
                HStack {
                    Text("Font Size")
                        .bold()
                    Spacer()
                    HStack {
                        Image(systemName: sizeDescription
                              != "OK" ? "exclamationmark.triangle.fill" : "checkmark.circle.fill")
                            .foregroundColor(sizeDescription != "OK" ? .yellow : .green)
                        Text(sizeDescription)
                    }
                }
                
                Slider(value: $fontSize, in: 20 ... 40)
                    .accessibilityValue("Font Size: \(Int(fontSize)),  \(sizeDescription)")
            }
            .padding()
            .background(.regularMaterial)
            .cornerRadius(20)
            
        }
        .padding()
    }
}

struct Title: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
            .font(.system(size: 100))
            .foregroundColor(.yellow)
            .accessibilityHidden(true)
        Text("Title!")
            .font(.system(size: 50, weight: .bold))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
