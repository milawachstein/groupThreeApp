//
//  ContentView.swift
//  breathingExercise
//
//  Created by Mila Wachstein on 7/30/24.
//


import SwiftUI
import UIKit

struct BreathingExercise: View {
    @State private var bubbleTapped = false
    @State private var breathTimer = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0
    var body: some View {
        
        NavigationStack{
        
            ZStack{
                
                Color(red: 0.35, green: 0.44, blue: 0.54, opacity: 1.0)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    Text("Peaceful Place")
                        .foregroundColor(Color(red: 0.779, green: 0.849, blue: 0.917))
                        .multilineTextAlignment(.center)
                        .font(.custom("Times", size: 50))
                    
                    Text("Tap the ball to make it grow. Breathe in for however long you need. When you are ready to exhale, tap the ball, and breathe out as it shrinks.")
                        .foregroundColor(Color(red: 0.363, green: 0.45, blue: 0.55))
                        .multilineTextAlignment(.center)
                        .font(.custom("Times", size: 20))
                        .padding()
                        .background(Color(red: 0.98, green: 0.98, blue: 0.99, opacity: 0.6))
                        .cornerRadius(20)
                        .padding()
                    
                    Spacer()
                    
                    Text("\(counter)")
                        .font(.custom("Times", size: 100))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.99, opacity: 0.6))
                        .padding()
                        .cornerRadius(20)
                        .onReceive(timer) { time in
                            counter+=1
                        }
                    
                    Spacer()
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .foregroundColor(Color(red: 0.78, green: 0.845, blue: 0.921))
                        .scaleEffect(bubbleTapped ? 7.0 : 1.0)
                        .opacity(bubbleTapped ? 1.0 : 0.25)
                        .onTapGesture{
                            withAnimation(.easeInOut(duration: 7.0)){
                                bubbleTapped.toggle()
                            }
                            counter = 0
                        }
                    
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                    NavigationLink(destination: homepage()) {
                        Text("To Homepage")
                            .font(.custom("Times", size: 25))
                            .foregroundColor(Color(red: 0.779, green: 0.849, blue: 0.917))
                    }
                    
                }
            }
        }
    }
}

#Preview {
    BreathingExercise()
}
