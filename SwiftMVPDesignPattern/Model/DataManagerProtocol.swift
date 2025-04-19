//
//  DataManagerProtocol.swift
//  SwiftMVPDesignPattern
//
//  Created by Angelos Staboulis on 19/4/25.
//

import Foundation
protocol DataManagerProtocol {
    func fetchAddress(completion: @escaping ([Address]?) -> Void)
}
