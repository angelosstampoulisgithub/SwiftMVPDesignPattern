//
//  AddressPresenter.swift
//  SwiftMVPDesignPattern
//
//  Created by Angelos Staboulis on 19/4/25.
//

import Foundation
class AddressPresenter: AddressPresenterProtocol {
    weak var view: AddressViewProtocol?
    var dataManager: DataManagerProtocol
    init(view: AddressViewProtocol, dataManager: DataManagerProtocol) {
        self.view = view
        self.dataManager = dataManager
    }

    func showAddressLoaded() {
        dataManager.fetchAddress { [weak self] users in
            if let users = users {
                self?.view?.showAddress(users: users)
            }
        }
    }
}
