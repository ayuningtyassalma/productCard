//
//  TableViewCell.swift
//  ProductCard
//
//  Created by Phincon on 20/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var productTitle = ""
    var productPrice = 0
    var productLaunch = ""
    
//    var header : UILabel{
//        let productSection = UILabel()
//        productSection.translatesAutoresizingMaskIntoConstraints = false
//
//    }
    
    var cardView : UIView = {
        let productCardView = UIView()
        productCardView.translatesAutoresizingMaskIntoConstraints = false
//        productCardView.backgroundColor = .red
        return productCardView
    }()
    
    var productName : UILabel = {
        let titleOfProduct = UILabel()
        titleOfProduct.translatesAutoresizingMaskIntoConstraints = false
        return titleOfProduct
    }()
    
    var listPrice : UILabel = {
        let priceOfProduct = UILabel()
        priceOfProduct.translatesAutoresizingMaskIntoConstraints = false
        return priceOfProduct
    }()

    var productImage : UIImageView = {
        let imageOfProduct = UIImageView()
        imageOfProduct.translatesAutoresizingMaskIntoConstraints = false
        return imageOfProduct
    }()
    
    var date : UILabel = {
        let launchTime = UILabel()
        launchTime.translatesAutoresizingMaskIntoConstraints = false
        return launchTime
    }()
    
    var icon : UIImageView = {
        let loveIcon = UIImageView()
        loveIcon.translatesAutoresizingMaskIntoConstraints = false
        return loveIcon
    
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initiateCell()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initiateCell()
        
    }
    
    func initiateCell(){
        self.addSubview(cardView)
        cardView.addSubview(productName)
        cardView.addSubview(productImage)
        cardView.addSubview(listPrice)
        cardView.addSubview(date)
        cardView.addSubview(icon)
        setUpProductCard()
        setUpProductTitle()
        setUpProductImage()
        setUpProductPrice()
        setUpProductLaunch()
        setUpIcon()
        
    }
    
    
    func setUpProductCard(){
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cardView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            cardView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            cardView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
        ])

        cardView.layer.cornerRadius = 10
//        cardView.layer.borderWidth = 1
       
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowRadius = 13
        cardView.backgroundColor = .white
        cardView.layer.shadowOpacity = 0.3
        cardView.layer.shadowOffset = .zero
        
//        cardView.layer.shadowOffset = CGSize.init(width: 10, height: 5  )
    }
    
    func setUpProductTitle(){
        NSLayoutConstraint.activate([
            productName.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 14),
            productName.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 12),
//            productName.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: 17),
//            productName.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10),
        ])
        
        productName.text = productTitle
        productName.font = productName.font.withSize(12)
    }
    
    
    func setUpProductImage(){
        NSLayoutConstraint.activate([
            productImage.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 0),
            productImage.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 0),
            productImage.widthAnchor.constraint(equalToConstant: 105)
        ])
        
        productImage.image = UIImage(named: "jamtangan")
    }
    
    
    func setUpProductLaunch(){
        NSLayoutConstraint.activate([
            date.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 5),
//            date.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: -),
            date.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: -4),
//            date.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -30),
        ])
        
        date.text = productLaunch
        date.font = date.font.withSize(9)
    }
    
    
    func setUpProductPrice(){
        NSLayoutConstraint.activate([
            listPrice.topAnchor.constraint(equalTo: productName.bottomAnchor, constant: 8),
            listPrice.leftAnchor.constraint(equalTo: productImage.rightAnchor, constant: 12),
//            listPrice.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: 6),
//            listPrice.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10),
        ])
        
        listPrice.text = "Rp \(productPrice)"
        listPrice.font = UIFont.boldSystemFont(ofSize: 14)
    }
    
    func setUpIcon(){
        NSLayoutConstraint.activate([
            icon.topAnchor.constraint(equalTo: listPrice.topAnchor, constant: 30),
            icon.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: -7),
//            icon.topAnchor.constraint(equalTo: listPrice.bottomAnchor, constant: 10),
            icon.widthAnchor.constraint(equalToConstant: 20),
            icon.heightAnchor.constraint(equalToConstant: 17)
        ])
        icon.image = UIImage(named: "love")
    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
