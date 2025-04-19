//
//  ViewController.swift
//  SwiftMVPDesignPattern
//
//  Created by Angelos Staboulis on 19/4/25.
//

import UIKit

class ViewController: UIViewController,AddressViewProtocol,UITableViewDelegate,UITableViewDataSource {
   
    var arrayAddress:[Address] = []
    func showAddress(users: [Address]) {
        arrayAddress.append(contentsOf: users)
    }
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: AddressPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        let dataManager = DataManager()
        let presenter = AddressPresenter(view: self, dataManager: dataManager)
        presenter.showAddressLoaded()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = "SwiftMVPDesignPattern"
    }
    

}
extension ViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAddress.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = arrayAddress[indexPath.row].fullname
        return cell
    }
}
