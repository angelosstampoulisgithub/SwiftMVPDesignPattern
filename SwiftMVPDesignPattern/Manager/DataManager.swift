//
//  DataManager.swift
//  SwiftMVPDesignPattern
//
//  Created by Angelos Staboulis on 19/4/25.
//

import Foundation
class DataManager: DataManagerProtocol {
    func fetchAddress(completion: @escaping ([Address]?) -> Void) {
        let address = [Address(id: 1, fullname: "George Stefanidis", address: "Gorgopotamou 1", city: "Komotini", phone: "2531038354"),Address(id: 2, fullname: "Angelos Staboulis", address: "G.Mameli 1", city: "Komotini", phone: "2531039354"),Address(id: 3, fullname: "Theodoros Kokotas", address: "Venizelou 1", city: "Komotini", phone: "2531033354"),Address(id: 4, fullname: "Kostas Theodorou", address: "Irodotou 15", city: "Komotini", phone: "2531031354"),Address(id: 5, fullname: "Antonis Georgiou", address: "Venizelou 15", city: "Komotini", phone: "2531033354")]
        completion(address)
    }
    
   
    
    
}
