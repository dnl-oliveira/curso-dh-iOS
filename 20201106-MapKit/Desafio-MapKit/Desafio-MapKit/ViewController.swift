//
//  ViewController.swift
//  Desafio-MapKit
//
//  Created by Daniel Nascimento on 08/11/20.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControlCategory: UISegmentedControl!
    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        // Do any additional setup after loading the view.
        
        loadHouse()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        checkLocationAuthorizationStatus()
    }
    
    func checkLocationAuthorizationStatus() {
        locationManager.delegate = self
        locationManager.startUpdatingLocation()

        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }

    func centerMapOn(location: CLLocation) {
        let region = MKCoordinateRegion(center: location.coordinate,
                                        latitudinalMeters: 1000,
                                        longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
    }
    
    
    @IBAction func changeSegmentedControlCategory(_ sender: Any) {
        if segmentedControlCategory.selectedSegmentIndex == ECategory.house {
            loadHouse()
        }
        if segmentedControlCategory.selectedSegmentIndex == ECategory.hotels {
            loadHotels()
        }
        if segmentedControlCategory.selectedSegmentIndex == ECategory.gasStations {
            loadGasStations()
        }
        if segmentedControlCategory.selectedSegmentIndex == ECategory.markets {
            loadMarkets()
        }
    }
    
    func loadHouse() {
        let location = CLLocation(latitude: -23.6964, longitude: -46.6017)
        let customLocation = CustomLocation(coordinate: location.coordinate,
                                            title: "Casa do Daniel",
                                            subtitle: "House",
                                            category: "House")
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotation(customLocation)
        centerMapOn(location: location)
    }
    
    func loadMarkets() {
        let locationVilaRica = CLLocation(latitude: -23.6946, longitude: -46.5981)
        let locationBomPreco = CLLocation(latitude: -23.6946, longitude: -46.5972)
        let locationAssai = CLLocation(latitude: -23.6893, longitude: -46.5907)
        let customLocation = [CustomLocation(coordinate: locationVilaRica.coordinate,
                                            title: "Supermercado Vila Rica",
                                            subtitle: "Supermercado",
                                            category: "Mercado"),
                              CustomLocation(coordinate: locationBomPreco.coordinate,
                                             title: "Supermercado Bom Preço",
                                             subtitle: "Supermercado",
                                             category: "Mercado"),
                              CustomLocation(coordinate: locationAssai.coordinate,
                                             title: "Atacadista Assaí",
                                             subtitle: "Atacadista",
                                             category: "Mercado")]
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotations(customLocation)
        centerMapOn(location: locationVilaRica)
    }
    
    func loadGasStations() {
        let locationPostoAssai = CLLocation(latitude: -23.6896, longitude: -46.5906)
        let locationPostoIpiranga = CLLocation(latitude: -23.6796, longitude: -46.5961)
        let locationPostoIpiranga2 = CLLocation(latitude: -23.6893, longitude: -46.5907)
        let customLocation = [CustomLocation(coordinate: locationPostoAssai.coordinate,
                                            title: "Posto Shell Assai",
                                            subtitle: "Posto de Combustivel",
                                            category: "Postos"),
                              CustomLocation(coordinate: locationPostoIpiranga.coordinate,
                                             title: "Posto Ipiranga",
                                             subtitle: "Posto de Combustivel",
                                             category: "Postos"),
                              CustomLocation(coordinate: locationPostoIpiranga2.coordinate,
                                             title: "Posto Ipiranga 2",
                                             subtitle: "Posto de Combustivel",
                                             category: "Postos")]
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotations(customLocation)
        centerMapOn(location: locationPostoIpiranga)
    }
    
    func loadHotels() {
        let locationTrade = CLLocation(latitude: -23.6889, longitude: -46.6301)
        let locationGosthy = CLLocation(latitude: -23.6888, longitude: -46.6357)
        let locationCupece = CLLocation(latitude: -23.6835, longitude: -46.6336)
        let customLocation = [CustomLocation(coordinate: locationTrade.coordinate,
                                            title: "Trade Hotel",
                                            subtitle: "Hotel",
                                            category: "Hotel"),
                              CustomLocation(coordinate: locationGosthy.coordinate,
                                             title: "Hotel Gosthy",
                                             subtitle: "Hotel",
                                             category: "Hotel"),
                              CustomLocation(coordinate: locationCupece.coordinate,
                                             title: "Hotel Cupece",
                                             subtitle: "Hotel",
                                             category: "Hotel")]
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotations(customLocation)
        centerMapOn(location: locationGosthy)
    }

}
extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        checkLocationAuthorizationStatus()
    }
}

extension ViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is CustomLocation else { return nil }

        let indentifier = "marker"

        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: indentifier)

        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: indentifier)
            annotationView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }

        return annotationView
    }

    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        print("clicou")
    }

    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print("selecionado")
        if let annotation = view.annotation as? CustomLocation {
            print(annotation.category ?? "")
        }
    }
}

