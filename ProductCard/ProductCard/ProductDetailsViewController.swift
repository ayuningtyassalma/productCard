//
//  ProductDetailsViewController.swift
//  ProductCard
//
//  Created by Phincon on 21/02/23.
//

import UIKit
enum DetailOfProducts: Int{
    case description
    case detail
    
    
    init(index: Int){
        switch index {
        case 0:
            self = .description
        case 1:
            self = .detail
        default:
            self = .description
        }
    }
}



class ProductDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableview.dequeueReusableCell(withIdentifier: ProductDescTableViewCell.identifier, for: indexPath) as? ProductDescTableViewCell
            else {
            return UITableViewCell()
        }
        
        return cell
            }

    

    @IBOutlet weak var tableview : UITableView!
    @IBOutlet weak var imageProduct : UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate =  self
        self.tableview.dataSource = self
        
        
        let detailNib = UINib(nibName: "ProductDescTableViewCell", bundle: nil)
        self.tableview.register(detailNib, forCellReuseIdentifier: MoreDetailsProductTableViewCell.identifier)
        self.tableview.register(detailNib.self, forCellReuseIdentifier:MoreDetailsProductTableViewCell.identifier )
        
        
        imageProduct.image = UIImage(named: "jamtangan")
        
       
        
        }
    
    
    }
    





