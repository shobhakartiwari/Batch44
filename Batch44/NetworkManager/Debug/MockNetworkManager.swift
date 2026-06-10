//
//  MockNetworkManager.swift
//  Batch44
//
//  Created by Shobhakar Tiwari on 6/9/26.
//

// mock singleton
final class MockNetworkManager: Sendable, NetworkProtocol {
    static let sharedInstance = MockNetworkManager()
    private init() {}
    
    func getDataFromServer(for url: String) -> [Product] {
        var productList:[Product] = []

        let product1 = Product(name: "Apple macbook", id: 1, description: "fajkjkfsld afsdlfdsaksdjfa dsfljafsdjdjk")
        let product2 = Product(name: "windows", id: 2, description: "fajkjkfsld afsdlfdsaksdjfa dsfljafsdjdjk")
        
        productList.append(product1)
        productList.append(product2)
       
        return productList
    }
}
