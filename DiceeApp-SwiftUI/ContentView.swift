//
//  ContentView.swift
//  DiceeApp-SwiftUI
//
//  Created by AhmedKhairy on 6/23/22.
//

import SwiftUI

struct ContentView: View {
    // Her 2 varibles on to the lift image and one to the right image.
    @State var lefdiceimage = 1
    @State var rightdiceimage = 1
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(n:lefdiceimage)
                    ExtractedView(n:rightdiceimage)
                    


                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    // every varible have a 6 random images .
                    lefdiceimage = Int.random(in: 1...6)
                    rightdiceimage = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                }
                
            }
            
        }
            
    }
        
}
struct ExtractedView: View {
    let n : Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

