//
//  Fillinginformation1.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2025-01-02.
//

import SwiftUI

struct Fillinginformation1: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Diary")
                    .font(.title)
                    .fontWeight(.heavy)
                    .navigationBarTitle("")
                VStack(alignment: .leading) {
                    NavigationLink(destination: Fillinginformation2()) {
                        Text("Weight                         ")
                        Circle().stroke(lineWidth: 4).frame(width:33, height:33)
                            .overlay(Text("➕"))
                    }
                    .padding()
                    .frame(width: 220, height: 50)
                    .background(Color.white)
                    .fontWeight(.medium)
                    .cornerRadius(15)
                        
                    NavigationLink(destination: Fillinginformation4()) {
                        Text("Pressure                     ")
                        Circle().stroke(lineWidth: 4).frame(width:33, height:33)
                            .overlay(Text("➕"))
                    }
                    .padding()
                    .frame(width: 220, height: 50)
                    .background(Color.white)
                    .fontWeight(.medium)
                    .cornerRadius(10)
                        
                    NavigationLink(destination: Fillinginformation6()) {
                        Text("Oxygen & pulse         ")
                        Circle().stroke(lineWidth: 4).frame(width:33, height:33)
                            .overlay(Text("➕"))
                    }
                    .padding()
                    .frame(width: 220, height: 50)
                    .background(Color.white)
                    .fontWeight(.medium)
                    .cornerRadius(10)
                        
                    NavigationLink(destination:BodyTemperatureView ()) {
                        Text("Body temperature     ")
                        Circle().stroke(lineWidth: 4).frame(width:33, height:33)
                            .overlay(Text("➕"))
                    }
                    .padding()
                    .frame(width: 220, height: 50)
                    .background(Color.white)
                    .fontWeight(.medium)
                    .cornerRadius(10)
                        
                    NavigationLink(destination: Frame21View()) {
                        Text("Sugar level                  ")
                        Circle().stroke(lineWidth: 4).frame(width:33, height:33)
                            .overlay(Text("➕"))
                    }
                    .padding()
                    .frame(width: 220, height: 50)
                    .background(Color.white)
                    .fontWeight(.medium)
                    .cornerRadius(10)
                    
                    //Circle().stroke(lineWidth: 4).frame(width:33, height:33).overlay(Text("➕").font(.system(size:33)))
                }
                .frame(maxWidth: 800, maxHeight: 900)
                .background(Color.background)
            }
        }
        .background(Color.background)
    }
}

#Preview {
    Fillinginformation1()
}
