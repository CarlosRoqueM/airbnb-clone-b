//
//  AirbnbView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 1/12/23.
//

import SwiftUI

struct AirbnbView: View {
    
    @ObservedObject var viewModel = PlacesViewModel()
    
    var body: some View {
        List(viewModel.airbnb.places, id: \.name) { place in
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: place.image_url)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                
                Text(place.name)
            }
        }
        .task {
            await viewModel.loadData()
        }
    }
}
struct AirbnbView_Previews: PreviewProvider {
    static var previews: some View {
        AirbnbView()
    }
}
