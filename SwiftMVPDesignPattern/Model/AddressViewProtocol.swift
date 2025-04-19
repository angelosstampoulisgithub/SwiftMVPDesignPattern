//
//  AddressViewProtocol.swift
//  SwiftMVPDesignPattern
//
//  Created by Angelos Staboulis on 19/4/25.
//

import Foundation
protocol AddressViewProtocol: AnyObject {
    func showAddress(users: [Address])
}
