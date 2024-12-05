//
//  Welcome page.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-03.
//

import SwiftUI

struct WelcomePage: View {
    let items = [
        "To create a care plan",
        "To keep notes in a diary",
        "To use the library"
    ]

    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                VStack {
                    Text("Hello, world!")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()

                    List(items, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("This App helps you")
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}

        
    


#Preview {
    Welcome_page()
}
