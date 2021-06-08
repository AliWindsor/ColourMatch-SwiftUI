//
//  ContentView.swift
//  Colour Match SwiftUI Edition
//
//  Created by Alicia Windsor on 07/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var squareSize:CGFloat = 100
    @State private var scoreCounter:Int = 0
    
    @State private var gameFinished:Bool = false
    
    @State private var currentColour:String = "red"
    @State private var colours:[String] = ["red","yellow","green","blue"]
    @State private var textColour:Color = Color.black
    
    var body: some View {
        
        VStack(spacing: 10){
            Spacer()
                .frame(height: 150 )
           
            VStack(spacing: 5){
                Text("Current Score: \(scoreCounter)")
                
                HStack{
                    Text("Click on the")
                    Text(currentColour)
                        .bold()
                        .foregroundColor(textColour)
                    Text("circle")
                }
            }
            .font(.title2)
            
            Spacer()
                .frame(height:55)
          
            ZStack{
                Group{
                    ButtonBG(opacityVal: 0.5, squareSize: $squareSize, multiplierVal:2.6, rectColour: Color.gray)
                    
                   ButtonBG(opacityVal: 0.5, squareSize: $squareSize, multiplierVal:2.3, rectColour: Color.white)
                }
                
                VStack{
                    Group{
                        HStack{
                            ColourButton(squareSize: $squareSize,
                                         scoreCounter: $scoreCounter,
                                         currentColour: $currentColour,
                                         colours: $colours,
                                         gameFinished: $gameFinished,
                                         buttonColour: Color.red,
                                         colourValue: "red",
                                         textColour: $textColour)
                            
                            ColourButton(squareSize: $squareSize,
                                         scoreCounter: $scoreCounter,
                                         currentColour: $currentColour,
                                         colours: $colours,
                                         gameFinished: $gameFinished,
                                         buttonColour: Color.yellow,
                                         colourValue: "yellow",
                                         textColour: $textColour)
                        }
                        
                        HStack{
                            ColourButton(squareSize: $squareSize,
                                         scoreCounter: $scoreCounter,
                                         currentColour: $currentColour,
                                         colours: $colours,
                                         gameFinished: $gameFinished,
                                         buttonColour: Color.blue,
                                         colourValue: "blue",
                                         textColour: $textColour)
                            
                            ColourButton(squareSize: $squareSize,
                                         scoreCounter: $scoreCounter,
                                         currentColour: $currentColour,
                                         colours: $colours,
                                         gameFinished: $gameFinished,
                                         buttonColour: Color.green,
                                         colourValue: "green",
                                         textColour: $textColour)
                        }
                    }
            
                }
                .rotationEffect(Angle(degrees:45))
            }
      
            Spacer()
                .frame(height: 250)
            
            HStack{
                Text("!!!")
                    .foregroundColor(.red)
                Text("Select the button that matches the color")
                    .foregroundColor(.gray)
            }
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .alert(isPresented: self.$gameFinished){
            Alert(title: Text("Congratulations!"),
                  message: Text("You got 10 points!"),
                  dismissButton: .default(Text("Play Again"))
            )
        }
        
    
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
