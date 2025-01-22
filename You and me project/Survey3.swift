//
//  Survey3.swift
//  You and me project
//
//  Created by Kamila Ponomarova on 2024-12-14.
//

import SwiftUI

struct CheckboxItem {
    var name: String
    var isChecked: Bool
}
struct CheckboxView: View {
    @Binding var item : CheckboxItem
    
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                Spacer()
                Image(systemName:item.isChecked ? "checkmark.circle.fill"
                  :"circle")
                .foregroundColor(item.isChecked ?
                .green:.gray)
                .font(.system(size:22))
                .onTapGesture {
                    item.isChecked.toggle()
                }
            }
        }
    }
}

struct Survey3: View {
    @State private var items = [
        CheckboxItem(name:"moves with the help of walkers",isChecked: false),
        CheckboxItem(name:"can not walk but can sit without support",isChecked: false),
        CheckboxItem(name:"always lies",isChecked: false),
    ]
    var body: some View {
        NavigationView {
            VStack(){
                Text("Survey")
                    .font(.largeTitle)
                Spacer()
                Spacer()
                Text("How does the care receiver move?")
                    .font(.headline)
                List{
                    ForEach($items,id:\.name){
                        $item in
                        CheckboxView(item:$item)
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.background)
            
            
            NavigationLink(destination: RecommendationsView1()) {
                Text("Next")
                    .foregroundColor(.black)
                    .padding()
                    .background(Color.black)
            }
        }
    }
}

struct CheckboxView_Preview:PreviewProvider{
    static var previews:some View {
        Survey3()
    }
}

