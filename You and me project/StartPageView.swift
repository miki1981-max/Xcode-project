//
//  StartPageView.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2025-01-27.
//

import SwiftUI

struct StartPageView: View {
    
    var body: some View {
        
        NavigationView {
            VStack {
                ZStack {
                    // Background color from assets
                    Color("Background").ignoresSafeArea()
                    
                    VStack(spacing: 40) {
                        // Animated Icon
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0.2))
                                .frame(width: 140, height: 140)
                            Image(systemName: "heart.text.square.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.blue)
                                .shadow(radius: 10)
                                .scaleEffect(1.1)
                                .animation(
                                    Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true),
                                    value: true
                                )
                        }
                        .padding(.top, 40)
                        Text("You and Me")
                            .font(.largeTitle)
                            .italic()
                            .foregroundColor(.blue)
                    
                        
                        // The title
                        Text("Elderly Care Service")
                            .background(Color.blue)
                            .foregroundColor(.white) .multilineTextAlignment(.center) .padding()
                            .padding(.bottom,100)
                        
                        NavigationLink(destination: WelcomePage()) {
                            Text("Start")
                                .foregroundColor(Color.blue)
                                .frame(width: 100.0, height:50)
                                .background(Color.white)
                                .cornerRadius(15)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.background)
                    
                }
            }
        }
    }
    
}

#Preview {
    StartPageView()
}
