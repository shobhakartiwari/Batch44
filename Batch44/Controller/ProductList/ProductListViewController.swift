//
//  ProductListViewController.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 5/27/26.
//

import UIKit

// MARK: -

protocol ProductProtocol {
    func getProductList() -> [Product]
}

// MARK: -

class ProductListViewController: UIViewController {
    @IBOutlet weak var productTable: UITableView!
    var productList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productList = getProductList()
        productTable.dataSource = self
    }
}

// MARK: -

extension ProductListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableCellIdentifier.productCell.rawValue) as? ProductCell
        let product = productList[indexPath.row]
        cell?.productLabel.text = product.name
        cell?.layer.cornerRadius =  15.0
        
        cell?.layer.borderColor = UIColor.red.cgColor
        return cell ?? UITableViewCell()
        
        
        //let newColor = UIColor(red: 0.4118, green: 0.5529, blue: 0.2157, alpha: 1.0)
    }
}

extension ProductListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
}

// MARK: - Fetch product / Helper methods

extension ProductListViewController: ProductProtocol {
     func getProductList() -> [Product] {
         let objNetwork: NetworkProtocol? = MockNetworkManager.sharedInstance
         return objNetwork?.getDataFromServer(for: "https://server-address") ??  []
    }
}
