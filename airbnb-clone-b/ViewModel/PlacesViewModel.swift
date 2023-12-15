//
//  PlacesViewModel.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 1/12/23.
//

import SwiftUI

import Foundation

class PlacesViewModel: ObservableObject {
    @Published var airbnb: Airbnb = Airbnb(places: [])

    func loadData() async {
        guard let url = URL(string: "https://airbnb-api-b-gamma.vercel.app/airbnb") else {
            print("Invalid URL")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decoder = try? JSONDecoder().decode(Airbnb.self, from: data) {
                DispatchQueue.main.async {
                    self.airbnb = decoder
                }
            }

        } catch let error {
            print(error.localizedDescription)
        }
    }
}

