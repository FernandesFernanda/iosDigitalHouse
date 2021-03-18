//
//  ViewController.swift
//  11_06_MapKit
//
//  Created by Fernanda Fernandes on 06/11/20.
//  Copyright © 2020 Fernanda Fernandes. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var categoriesSegmentedControl: UISegmentedControl!
    @IBOutlet var myMapView: MKMapView!
    
    var arrayAll = [Business]()
    var arrayHotel = [Business]()
    var arrayRestaurant = [Business]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        loadData()
    }
    
    func loadData() {
        let locationFogoDeChao = CLLocation(latitude: -23.540582, longitude: -46.621647)
        let locationMequi1000 = CLLocation(latitude: -23.560454, longitude: -46.658089)
        let locationHotelTivoliMofarrej = CLLocation(latitude: -23.563807, longitude: -46.656086)
        let locationHotelIbis = CLLocation(latitude: -23.556884, longitude: -46.661890)
        let locationSupermercadoPaoDeAcucar = CLLocation(latitude: -23.564771, longitude:  -46.655131)
        let locationRestauranteSiSenor = CLLocation(latitude: -23.565017, longitude: -46.654316)
        let locationHotelRenaissance = CLLocation(latitude: -23.558507, longitude: -46.662018)
        
        let restauranteFogoDeChao = Business(coordinate: locationFogoDeChao.coordinate, title: "Fogo de Chão", subtitle: "Churrascaria", category: "Restaurante")
        let mequi = Business(coordinate: locationMequi1000.coordinate, title: "Méqui 1000", subtitle: "Lanches", category: "Restaurante")
        let hotelTivoliMofarrej = Business(coordinate: locationHotelTivoliMofarrej.coordinate, title: "Hotel Tivoli Mofarrej", subtitle: "Turismo", category: "Hotel")
        let hotelIbis = Business(coordinate: locationHotelIbis.coordinate, title: "Hotel Ibis", subtitle: "Turismo", category: "Hotel")
        let supermercadoPaoDeAcucar = Business(coordinate: locationSupermercadoPaoDeAcucar.coordinate, title: "Supermercado Pão de Açúcar", subtitle: "Alimentos", category: "Supercado")
        let restauranteSiSenor = Business(coordinate: locationRestauranteSiSenor.coordinate, title: "Si Señor", subtitle: "Mexicano", category: "Restaurante")
        let hotelRenaissance = Business(coordinate: locationHotelRenaissance.coordinate, title: "Hotel Renaissance", subtitle: "Turismo", category: "Hotel")
        
        arrayAll.append(restauranteFogoDeChao)
        arrayAll.append(mequi)
        arrayAll.append(hotelTivoliMofarrej)
        arrayAll.append(hotelIbis)
        arrayAll.append(supermercadoPaoDeAcucar)
        arrayAll.append(restauranteSiSenor)
        arrayAll.append(hotelRenaissance)
        
        myMapView.addAnnotations(arrayAll)
       
        
        let region = MKCoordinateRegion(center: mequi.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        myMapView.setRegion(region, animated: true)
        
        
    }
    
    
    
    @IBAction func selectBusinessTypeSegmentedControl(_ sender: Any) {
        switch categoriesSegmentedControl.selectedSegmentIndex {
        case 0:
            myMapView.removeAnnotations(myMapView.annotations)
            myMapView.addAnnotations(arrayAll)
        case 1:
            myMapView.removeAnnotations(myMapView.annotations)
            arrayRestaurant = arrayAll.filter { (business) -> Bool in
                business.category == "Restaurante"
            }
            myMapView.addAnnotations(arrayRestaurant)
        case 2:
            myMapView.removeAnnotations(myMapView.annotations)
            arrayHotel = arrayAll.filter { (business) -> Bool in
                business.category == "Hotel"
            }
            myMapView.addAnnotations(arrayHotel)
        default: break
        }
        
        
    }
    
}

