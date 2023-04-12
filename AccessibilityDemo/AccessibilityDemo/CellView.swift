//
//  CellView.swift
//  AccessibilityDemo
//
//  Created by David Williams on 4/12/23.
//

import SwiftUI

struct CellView: View {
    
    @Binding var fontSize: Double
    
    var body: some View {
        HStack {
            Image(systemName: "sun.max")
                .foregroundColor(.yellow)
                .font(.system(size: fontSize))
            Spacer()
            VStack {
                Text("Hello,")
                Text("World!")
            }
            .font(.system(size: fontSize))
        }
        .padding()
        .background(.regularMaterial)
        .cornerRadius(20)
        
        
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(fontSize: .constant(20))
    }
}
