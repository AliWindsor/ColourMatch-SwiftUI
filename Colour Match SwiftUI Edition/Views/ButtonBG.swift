//
//  ButtonBG.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 08/06/2021.
//

import SwiftUI

struct ButtonBG: View {
    
    @State var opacityVal:Double

    @Binding var squareSize:CGFloat
    
    @State var multiplierVal:CGFloat
    @State var rectColour:Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25, style: .continuous)
            .fill(rectColour)
            .opacity(opacityVal)
            .rotationEffect(Angle(degrees:45))
            .frame(width: squareSize*multiplierVal, height: squareSize*multiplierVal)
    }
}

