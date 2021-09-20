//
//  MapView.swift
//  FakeTelegram
//
//  Created by 苏粤翔 on 2021/8/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @Binding var centerCoordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        return mapView
    }

    func updateUIView(_ view: MKMapView, context: Context) {
        view.showsUserLocation = true
        view.mapType = MKMapType.mutedStandard
        
               
               //初始化一个二维坐标，并设置经纬度的数值。
               let coordinate2D = CLLocationCoordinate2D(latitude: 24.58899, longitude: 118.094849)
        
               //设置地图视图的缩放比例
               let zoomLevel = 0.004
        
               //初始化一个坐标区域对象，作为地图视图所要显示的地理区域。
               let region = MKCoordinateRegion(center: coordinate2D, span: MKCoordinateSpan(latitudeDelta: zoomLevel, longitudeDelta: zoomLevel))
               //使地图视图显示自定义的地理区域
               view.setRegion(view.regionThatFits(region), animated: true)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView

        init(_ parent: MapView) {
            self.parent = parent
        }
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            parent.centerCoordinate = mapView.centerCoordinate
        }

    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(centerCoordinate: .constant(MKPointAnnotation.example.coordinate))
    }
}

extension MKPointAnnotation {
    static var example: MKPointAnnotation {
        let annotation = MKPointAnnotation()
//        annotation.title = "London"
//        annotation.subtitle = "Home to the 2012 Summer Olympics."
        annotation.coordinate = CLLocationCoordinate2D(latitude: 118.094826, longitude: 24.588161)
        return annotation
    }
}

