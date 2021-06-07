//
//  ButtonView.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 07/06/2021.
//

import SwiftUI

struct ButtonView: View {
    @Binding var squareSize:CGFloat
    //@Binding var buttonColour:Color
    @Binding var currentColour:String
    
    var body: some View {
        Button(action: {self.currentColour = "red"}){
            //ColourButton(squareSize: $squareSize, buttonColour: $buttonColour)
        }
    }
}

