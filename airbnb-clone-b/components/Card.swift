//
//  Card.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 10/11/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
                    Image("item1")
                        .frame(width: 342, height: 323)
                        .cornerRadius(16)
                    HStack {
                        Text("Harlingen, Netherlands")
                            .fontWeight(.bold)
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")
                                .font(.system(size: 11))
                            Text("4.8")
                        }
                    }

                    Text("Professional Host")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text("18-23 Dec")
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text("$1,065 total")
                        .fontWeight(.semibold)
        }.padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
