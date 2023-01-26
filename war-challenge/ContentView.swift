//
//  ContentView.swift
//  war-challenge
//
//  Created by sam blaha on 1/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String
    @State var cpuCard: String
    @State var playerScore: Int
    @State var cpuScore: Int
    
    var body: some View {
        ZStack {
            Image("background")
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Image(playerCard)
                        .padding()
                    Image(cpuCard)
                        .padding()
                }
                Spacer()
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card\(String(playerRand))"
                    cpuCard = "card\(String(cpuRand))"
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand == cpuRand {
                        playerScore += 0
                    } else {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(10)
                        Text(String(playerScore))
                    }
                    .foregroundColor(.white)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .padding(10)
                        Text(String(cpuScore))
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(playerCard: "back", cpuCard: "back", playerScore: 0, cpuScore: 0)
    }
}
