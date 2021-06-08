//
//  ColourButton.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 07/06/2021.
//

import SwiftUI

struct ColourButton: View {
    
    @Binding var squareSize:CGFloat
    @Binding var scoreCounter:Int
    
    @Binding var currentColour:String
    @Binding var colours:[String]
    
    @Binding var gameFinished:Bool
    
    @State var buttonColour:Color
    @State var colourValue:String
    
    @Binding var textColour:Color
    
    func setTextColour(tc:String){
        switch tc {
        case "red":
            textColour = Color.red
        case "yellow":
            textColour = Color.yellow
        case "green":
            textColour = Color.green
        case "blue":
            textColour = Color.blue
        default:
            textColour = Color.black
        }
    }
    
    func winningCondition (score: Int) {
        var score = score
        if (score >= 10) {
            gameFinished = true
        }
        score = gameFinished ? 0 : score
        
        scoreCounter = score
    }
    
    var body: some View {
        
        Button(action: {
            scoreCounter = currentColour == colourValue ? scoreCounter + 1 : 0
            self.currentColour = colours.randomElement()!
            winningCondition(score: scoreCounter)
            setTextColour(tc: colours.randomElement()!)
            
        }){
            Circle()
                .fill(buttonColour)
                .frame(width: squareSize, height: squareSize)
        }
        
      
    }
}

