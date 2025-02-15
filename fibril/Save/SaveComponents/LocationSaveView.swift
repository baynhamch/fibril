////////
////////  LocationSaveView.swift
////////  fibril
////////
////////  Created by Nicholas Conant-Hiley on 5/17/24.
////////
////import SwiftUI
////import MapKit
////import CoreLocation
//////import _MapKit_SwiftUI
////
//import SwiftUI
//import MapKit
//import CoreLocation
//
//struct LocationSaveView: View {
//    @Environment(\.dismiss) var dismiss
//    @State private var location: String = ""
//    @State private var locationLatitude: Double?
//    @State private var locationLongitude: Double?
//    @State private var search: String = ""
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 42.361145, longitude: -71.057083),
//        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//    )
//    
//    @State private var trackingMode: MapUserTrackingMode = .follow
//    
//    @State private var manager = CLLocationManager()
//    @StateObject private var managerDelegate = LocationDelegate()
//    
//    var body: some View {
//        
//        NavigationStack {
//            VStack {
//                Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $trackingMode, annotationItems: managerDelegate.pins) { pin in
//                    MapPin(coordinate: pin.location.coordinate, tint: .red)
//                }
//                .ignoresSafeArea(edges: .top)
//                .ignoresSafeArea(edges: .horizontal)
//                VStack {
//                    TextField("What are you looking for...", text: $search)
//                        .padding()
//                        .cornerRadius(8)
//                        .padding(.horizontal)
//                        .shadow(radius: 4)
//                    Button(action: {
//                        getCoordinatesForAddress(address: search) { coordinates, error in
//                            if let coordinates = coordinates {
//                                self.locationLatitude = coordinates.latitude
//                                self.locationLongitude = coordinates.longitude
//                                region.center = CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
//                                // Update the location binding with the entered address
//                                location = search
//                            } else if let error = error {
//                                print("Error: \(error.localizedDescription)")
//                            }
//                        }
//                    }) {
//                        Text("Search").padding().border(Color.blue)
//                    }
//                }
//            }
//            .onAppear {
//                manager.delegate = managerDelegate
//                manager.requestWhenInUseAuthorization()
//        }
//            .toolbar {
//                ToolbarItem(placement: .topBarTrailing, content: {
//                    Button {
//                        dismiss()
//                    } label: {
//                        Image(systemName: "xmark")
//                    }
//                })
//            }
//        }
//    }
//    
//    func getCoordinatesForAddress(address: String, completion: @escaping (CLLocationCoordinate2D?, Error?) -> Void) {
//        let geocoder = CLGeocoder()
//        
//        geocoder.geocodeAddressString(address) { (placemarks, error) in
//            if let error = error {
//                print("Geocoding error: \(error.localizedDescription)")
//                completion(nil, error)
//                return
//            }
//            
//            if let placemark = placemarks?.first {
//                let coordinates = placemark.location?.coordinate
//                completion(coordinates, nil)
//            } else {
//                print("No coordinates found for address: \(address)")
//                completion(nil, nil)
//            }
//        }
//    }
//    
//    class LocationDelegate: NSObject, ObservableObject, CLLocationManagerDelegate {
//        @Published var pins: [Pin] = []
//        
//        // Handle changes in authorization status
//        func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
//            switch manager.authorizationStatus {
//            case .authorizedWhenInUse, .authorizedAlways:
//                print("Location access granted")
//                manager.startUpdatingLocation()
//            case .denied, .restricted:
//                print("Location access denied")
//            case .notDetermined:
//                print("Location access not determined")
//                manager.requestWhenInUseAuthorization()
//            @unknown default:
//                break
//            }
//        }
//        
//        // Update location pins
//        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//            if let location = locations.last {
//                pins.append(Pin(location: location))
//            }
//        }
//    }
//    
//    // Map pins for user location updates
//    struct Pin: Identifiable {
//        var id = UUID()
//        var location: CLLocation
//    }
//}
//
//struct LocationSaveView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationSaveView()
//    }
//}
import SwiftUI
import MapKit
//
//struct MapSaveView: View {
//    var mapEntry: MapEntry
//
//    @State private var region: MKCoordinateRegion
//    @State private var trackingMode: MapUserTrackingMode = .follow
//
//    init(mapEntry: MapEntry) {
//        self.mapEntry = mapEntry
//        self._region = State(initialValue: MKCoordinateRegion(
//            center: mapEntry.coordinates ?? CLLocationCoordinate2D(latitude: 42.361145, longitude: -71.057083),
//            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        ))
//    }
//
//    var body: some View {
//        VStack {
//            Text(mapEntry.title ?? "Map Entry")
//                .font(.headline)
//                .padding()
//
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: $trackingMode, annotationItems: [mapEntry]) { entry in
//                MapPin(coordinate: entry.coordinates ?? CLLocationCoordinate2D(latitude: 42.361145, longitude: -71.057083), tint: .red)
//            }
//            .ignoresSafeArea(edges: .top)
//        }
//        .padding()
//    }
//}
//
//struct MapEntry: Identifiable {
//    let id = UUID()
//    var title: String?
//    var date = Date.now
//    var mapNote: String?
//    var address: String
//    var coordinates: CLLocationCoordinate2D?
//}
//
//struct MapSaveView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapSaveView(mapEntry: MapEntry(
//            title: "Sample Map Entry",
//            address: "Boston, MA",
//            coordinates: CLLocationCoordinate2D(latitude: 42.361145, longitude: -71.057083)
//        ))
//    }
//}
