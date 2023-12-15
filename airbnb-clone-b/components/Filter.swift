//
//  Filter.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 24/11/23.
//

import SwiftUI

struct Filter: View {
    var icon: String
    var text: String
    var body: some View {
        HStack{
            Text(text)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
            Image(systemName: icon)
                .frame(width: 23, height: 23)
                .font(.system(size: 23))
        }
        .padding()
        .overlay (
            Capsule (style: .continuous)
                .stroke (Color.gray.opacity(0.2), lineWidth: 1))
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(icon: "chevron.down", text: "Activity type")

        
    }
}
