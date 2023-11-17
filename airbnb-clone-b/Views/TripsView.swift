//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center:  CLLocationCoordinate2D(latitude: -12.045399399012775, longitude: -76.9526236476583), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack{
                    ZStack (alignment: .topLeading){
                        Image("item1")
                            .resizable()
                            .frame(width: 120, height: 120)
                        Image(systemName: "xmark.circle.fill")
                            .background()
                            .cornerRadius(100)
                            .padding(8)
            }
            VStack (alignment: .leading) {
                HStack{
                    Text("La calera,Colombia")
                        .fontWeight(.semibold)
                        .font(.caption)
                        Spacer()
                    Image(systemName:"heart")
                        .resizable()
                        .frame(width:13,height:13)
                    }
                    Spacer()
                    Text("Nov 19 - 24")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                        .font(.caption2)
                HStack{
                    Text ("S/268 night")
                        .font(.caption)
                    Spacer()
                    Image(systemName:"star.fill")
                        .resizable()
                        .frame(width:10,height:10)
                    Text("4.91")
                        .font(.caption)
                    }
                }
                .padding(.vertical,9)
                .frame(maxHeight: 119)
                Spacer()
                }
                .background(.white)
                .cornerRadius(20)
            }.padding()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
        static var previews: some View {
            TripsView()
    }
}
