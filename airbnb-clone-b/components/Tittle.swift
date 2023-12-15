//
//  Tittle.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 24/11/23.
//

import SwiftUI

struct Tittle: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 30, weight: .semibold))
            .multilineTextAlignment(.center)
            .padding()
    }
}

struct Tittle_Previews: PreviewProvider {
    static var previews: some View {
        Tittle(text: "Esto es una prueba")
    }
}
