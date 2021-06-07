//
//  ColourButton.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 07/06/2021.
//

import SwiftUI

struct ColourButton: View {
    
    @Binding var squareSize:CGFloat
    @State var buttonColour:Color
    
    var body: some View {
        Rectangle()
            .fill(buttonColour)
            .frame(width: squareSize, height: squareSize)
    }
}

