//
//  ViewController.swift
//  ProductCard
//
//  Created by Phincon on 20/02/23.
//

import UIKit
protocol ProductDetails {
   func addProductDetails()
}
class ViewController: UIViewController {
//    var productTitle = "Jam Tangan"
//    var productPrice = 10_000
//    var productLaunch = "03 Agustus 2022"

    var tableView : UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    
    }()
    
    var productSection : [AllProductDetails] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView = UITableView(frame:  CGRect(x:0, y:0, width:self.view.bounds.size.width, height: self.view.bounds.size.height))
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        
        view.addSubview(tableView)
        
        addProductDetails()
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productSection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as?
                TableViewCell else {
            return  UITableViewCell()}
        
        cell.productTitle = productSection[indexPath.row].productTitle
        cell.productPrice = productSection[indexPath.row].productPrice 
        cell.productLaunch = productSection[indexPath.row].productLaunch
        
        cell.initiateCell()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "productStoryboard", bundle: nil)
        if let productDetail = storyboard.instantiateViewController(identifier: "ProductDetailsViewController") as? ProductDetailsViewController{
            self.navigationController?.pushViewController(productDetail, animated: true)
        }
    }
    
    
}
extension ViewController: ProductDetails{
    func addProductDetails()  {
        productSection.append(AllProductDetails(productTitle : "Jam Tangan", productPrice: 10000, productLaunch: "03 Agustus 2022" ))
        productSection.append(AllProductDetails(productTitle : "Jam Tangan", productPrice: 10000, productLaunch: "03 Agustus 2022" ))
        productSection.append(AllProductDetails(productTitle : "Jam Tangan", productPrice: 10000, productLaunch: "03 Agustus 2022" ))
        productSection.append(AllProductDetails(productTitle : "Jam Tangan", productPrice: 10000, productLaunch: "03 Agustus 2022" ))

    }
    
}

