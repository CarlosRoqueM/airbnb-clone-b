//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = PlacesViewModel()
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
            List(contentViewModel.airbnb.places, id: \.name) { place in
                    HStack {
                        AsyncImage(url: URL(string: place.image_url)) { place in
                  place.resizable()
                        } placeholder: {
                ProgressView()
                    }
                        .frame(width: 100, height: 100)
                        Text(place.name)
                    }
                }.task {
                    await contentViewModel.loadData()
                }.listStyle(.inset)
                .scrollIndicators(.hidden)
                .padding([.trailing, .leading])
            }
                
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
    

