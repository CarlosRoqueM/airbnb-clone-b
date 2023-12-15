
import SwiftUI
import MapKit

struct TripsView: View {
    @StateObject var contentViewModel = PlacesViewModel()
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                                                    span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))

    var body: some View {
        List(contentViewModel.airbnb.places, id: \.id) { place in
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: [place]) { place in
                    MapMarker(coordinate: place.coordinate, tint: .blue)
                }
                .ignoresSafeArea()

                VStack {
                    Spacer()
                    HStack {
                        Image("item1")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .cornerRadius(10)

                        VStack(alignment: .leading, spacing: 4) {
                            Text("La calera, Colombia")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("Nov 19 - 24")
                                .font(.subheadline)
                                .foregroundColor(.gray)

                            HStack {
                                Text("S/268 night")
                                    .font(.caption)
                                Spacer()
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                Text("4.91")
                                    .font(.caption)
                            }
                        }
                        .frame(maxHeight: 119)

                        Spacer()
                    }
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding()
                }
            }
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}

