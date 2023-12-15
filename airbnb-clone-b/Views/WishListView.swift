//
//  WishListView.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//
import SwiftUI

struct WishListView: View {
    var body: some View {

        VStack(alignment: .center) {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20) {
                    Filter(icon: "chevron.down", text: "Activity Type")
                    Filter(icon: "chevron.down", text: "Price")
                    Filter(icon: "chevron.down", text: "Language")
                    Filter(icon: "chevron.down", text: "Others")
                }
            }
            .padding()
            Divider()
            Tittle(text: "Unforgettable activities hosted by locals")
            
            VStack{
                Image("tour")
                
                ZStack{
                    Card2()
                }
            }
        }
    }
}

struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}

//            zstack
