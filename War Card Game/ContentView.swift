//
//  ContentView.swift
//  War Card Game
//
//  Created by Brian Simmons on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var showAlert: Bool = false
    @State private var alertMessage = "WAR!"
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                    
                    Spacer()
                    
                    Image(cpuCard)
                    
                    Spacer()
                }
                
                Spacer()
                
//                Button("Deal!") {
//                    deal()
//                }
//                .font(.largeTitle)
//                .foregroundColor(.white)
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                .alert(alertMessage, isPresented: $showAlert) {
                    Button("OK", role: .cancel) { }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
        }
        
        
        
        
        // My attempt
        //        ZStack {
        //            Color(red: 67/255, green: 134/255, blue: 91/255)
        //
        //            VStack {
        //                Spacer()
        //
        //                Image("logo")
        //
        //                Spacer()
        //
        //                HStack {
        //                    Image("card2")
        //
        //                    Spacer()
        //
        //                    Image("card3")
        //                }
        //                .padding(.horizontal, 50)
        //
        //                Spacer()
        //
        //                Image("button")
        //
        //                Spacer()
        //
        //                HStack {
        //                    VStack {
        //                        Text("Player")
        //                            .minimumScaleFactor(0.5)
        //                            .lineLimit(1)
        //                            .font(.title3)
        //                            .padding(.bottom, 10)
        //
        //                        Text("0")
        //                            .font(.title)
        //                    }
        //
        //                    Spacer()
        //
        //                    VStack {
        //                        Text("CPU")
        //                            .minimumScaleFactor(0.5)
        //                            .lineLimit(1)
        //                            .font(.title3)
        //                            .padding(.bottom, 10)
        //
        //                        Text("0")
        //                            .font(.title)
        //                    }
        //                }
        //                .padding(.horizontal, 100)
        //                .foregroundColor(.white)
        //
        //                Spacer()
        //
        //            }
        //        }
        //        .ignoresSafeArea()
        
    }
        
    func deal() {
        showAlert = false
        
        // Randomize the Players Card
        let playerRandomCard = Int.random(in: 2...14)
        playerCard = "card\(playerRandomCard)"
        //print(playerCard)
        
        // Randomize the CPU's Card
        let cpuRandomCard = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuRandomCard)
        //print(cpuCard)
        
        if playerRandomCard > cpuRandomCard {
            playerScore += 1
        } else if playerRandomCard < cpuRandomCard {
            cpuScore += 1
        } else {
            showAlert = true
        }
        
        
    }
}

#Preview {
    ContentView()
}
