//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:40){
                Category(icon: "ovni", text: "OMG")
                Category(icon: "beaches", text: "Beaches")
                Category(icon: "home", text: "Tiny home")
                Category(icon: "golf", text: "Golfi")
                Category(icon: "landscape", text: "Amazing")
            }
        }
        .padding()
                
        Divider()
                
        List {
            Card()
            Card()
            Card()
        }
            .listStyle(.inset)
            .scrollIndicators(.hidden)
            .padding([.trailing, .leading])
                            
        Spacer()
        }
    }
}


    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
    

