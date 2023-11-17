//
//  TapItem.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//

import SwiftUI

struct TapItem: View {
    var text: String
    var icon: String
    var body: some View {
        VStack{
            Image(icon)
                .renderingMode(.template)
            Text(text)
        }
    }
}

struct TapItem_Previews: PreviewProvider {
    static var previews: some View {
        TapItem(text: "profile", icon: "profile")
    }
}
