//
//  ContentView.swift
//  War Card Game
//
//  Created by Brian Simmons on 3/13/25.
//

import SwiftUI

struct ContentView: View {
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
                    
                    Image("card2")
                    
                    Spacer()
                    
                    Image("card3")
                    
                    Spacer()
                }
                
                Spacer()
                
                Image("button")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
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
}

#Preview {
    ContentView()
}
