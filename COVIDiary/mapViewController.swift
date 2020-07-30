//
//  mapViewController.swift
//  COVIDiary
//
//  Created by Jayne BOTTARINI on 28/7/2020.
//  Copyright © 2020 Jayne BOTTARINI. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController {

    // test comment map
    // if this comment doesn't work im going to lose my mind
    // ive commented like five times seriously
    
    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var location = CLLocationCoordinate2DMake(41.763230, -88.200610)
        var span = MKCoordinateSpan(latitudeDelta: 0.2,longitudeDelta: 0.2)
        var region = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Taco Bell"
        annotation.subtitle = "Lunch with Friends"
        map.addAnnotation(annotation)
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
