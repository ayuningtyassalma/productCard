//
//  MoreDetailsProductTableViewCell.swift
//  ProductCard
//
//  Created by Phincon on 21/02/23.
//

import UIKit

class MoreDetailsProductTableViewCell: UITableViewCell {

    
    static let identifier = "moreDetails"
    
    var sectionTitle : UILabel = {
    let section = UILabel()
        section.translatesAutoresizingMaskIntoConstraints = false
        return section
    }()
    
     var stockLabel : UILabel = {
            let stockproduct = UILabel()
        stockproduct.translatesAutoresizingMaskIntoConstraints = false
        return stockproduct
    }()
    
    var sizeLabel : UILabel = {
        let sizeProduct = UILabel()
        sizeProduct.translatesAutoresizingMaskIntoConstraints = false
        return sizeProduct
    }()
    
    var weightLabel : UILabel = {
        let weightProduct = UILabel()
        weightProduct.translatesAutoresizingMaskIntoConstraints = false
        return weightProduct
    }()
    
    
    var typelabel : UILabel = {
        let typeProduct = UILabel()
        typeProduct.translatesAutoresizingMaskIntoConstraints = false
        return typeProduct
    }()
    
    var descLabel : UILabel = {
        let descProduct = UILabel()
        descProduct.translatesAutoresizingMaskIntoConstraints = false
        return descProduct
    }()
    
    func detail() {
        
    }
    
    func setUpNewSection(){
        NSLayoutConstraint.activate([
            sectionTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            sectionTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 31),
            sectionTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 100)
        ])
    }
    
    func setUpStock()  {
        NSLayoutConstraint.activate([
            stockLabel.topAnchor.constraint(equalTo:sectionTitle.bottomAnchor, constant: 22),

        
        ])
        
        stockLabel.text = "Stock :  20"
    }
    
   
}
