//
//  airbnb.swift
//  airbnb-clone-b
//
//  Created by MAC44 on 1/12/23.
//
//Codable en todos
import SwiftUI
import Foundation
import CoreLocation

struct Airbnb: Codable {
    let places: [Place]
}

struct Place: Codable {
    
    let name: String
    let rating: Double
    let image_url: String
    let date: String
    let price: Double
}

struct Location: Identifiable {
    let id = UUID()
    let country: String
    let city: String
    let coordinate: CLLocationCoordinate2D
}

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}
