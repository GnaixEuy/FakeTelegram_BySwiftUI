//
//  MapView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
//        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let center = CLLocationCoordinate2D(
            latitude: 118.03394,
            longitude: 24.48405
        )
        
        let span = MKCoordinateSpan(
            latitudeDelta: 0.02,
            longitudeDelta: 0.02)
        
        view.setRegion(
            MKCoordinateRegion(center: center,span: span),animated: true
        )}
    
}
