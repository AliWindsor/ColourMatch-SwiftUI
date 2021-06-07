//
//  ContentView.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 07/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var squareSize:CGFloat = 100
    @State private var squareContainer:CGFloat = 2.3
    @State private var scoreCounter:Int = 0
    @State private var currentColor:String = "red"
    @State private var textColor:Color = Color.black
    @State private var colours = ["red","yellow","green","blue"]
    
    var body: some View {
        
        if scoreCounter < 10{
            //end game and let user retry
        }else{
            //continue game
        }
        
        VStack{
            Text("Current Score: \(scoreCounter)")
            
            HStack{
                Text("Click on the")
                Text(currentColor)
                    .bold()
                Text("Square")
            }
            
            ZStack{
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: squareSize*squareContainer, height: squareSize*squareContainer)
                
                VStack{
                
                    HStack{
                        Button(action: {
                            scoreCounter = currentColor == "red" ? scoreCounter + 1 : 0
                            self.currentColor = colours.randomElement()!
                            
                        }){
                            ColourButton(squareSize: $squareSize, buttonColour: Color.red)
                        }
                        
                        Button(action: {
                            scoreCounter = currentColor == "yellow" ? scoreCounter + 1 : 0
                            self.currentColor = colours.randomElement()!
                        }){
                            ColourButton(squareSize: $squareSize, buttonColour: Color.yellow)
                        }
                    }
                    HStack{
                        Button(action: {
                            scoreCounter = currentColor == "blue" ? scoreCounter + 1 : 0
                            self.currentColor = colours.randomElement()!
                        }){
                            ColourButton(squareSize: $squareSize, buttonColour: Color.blue)
                        }
                        
                        Button(action: {
                            scoreCounter = currentColor == "green" ? scoreCounter + 1 : 0
                            self.currentColor = colours.randomElement()!
                        }){
                            ColourButton(squareSize: $squareSize, buttonColour: Color.green)
                        }
                    }
                    
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
