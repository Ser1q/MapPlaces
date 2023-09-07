//
//  ViewControllerMap.swift
//  MapViewListOfPlaces
//
//  Created by Nuradil Serik on 06.09.2023.
//

import UIKit
import MapKit


class ViewControllerMap: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var places = Places()
    
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lat:CLLocationDegrees = CLLocationDegrees(places.lattitude)!
        let long:CLLocationDegrees = CLLocationDegrees(places.longitude)!
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, long)
        
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = places.name
        annotation.subtitle = ""
        
        mapView.addAnnotation(annotation)
        
        let latDelta:CLLocationDegrees = 0.07
        let longDelta:CLLocationDegrees = 0.07

        let span = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        
        // Создаем регион на карте с моими координатоми в центре
        let region = MKCoordinateRegion(center: location, span: span)
        
        // Приближаем карту с анимацией в данный регион
        mapView.setRegion(region, animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
