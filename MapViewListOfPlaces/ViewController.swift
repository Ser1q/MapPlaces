//
//  ViewController.swift
//  MapViewListOfPlaces
//
//  Created by Nuradil Serik on 05.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonMap(_ sender: UIButton) {
        let mapVC = storyboard?.instantiateViewController(withIdentifier: "mapVC") as! ViewControllerMap
        navigationController?.show(mapVC, sender: self)
        mapVC.places = places
    }
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    var places = Places()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = places.name
        
        imageView.image = UIImage(named: places.imageName)
        
        labelDescription.text = places.description
        
      
        
        
    }
    


}
