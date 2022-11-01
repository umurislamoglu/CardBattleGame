//
//  ContentView.swift
//  WarChallange
//
//  Created by Umur İslamoğlu on 31.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in:2...14)
                    let cpuRand = Int.random(in:2...14)
                    
                    playerCard = "card\(playerRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    if cpuRand > playerRand {
                        cpuScore += 1

                    }
                    
                    if playerRand > cpuRand {
                        playerScore += 1

                    }
                    
                                       
                }, label:{
                    Image("dealbutton")
                })
                    Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerScore)).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(cpuScore)).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
              
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
