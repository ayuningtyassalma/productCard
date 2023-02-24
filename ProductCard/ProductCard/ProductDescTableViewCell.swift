//
//  ProductDescTableViewCell.swift
//  ProductCard
//
//  Created by Phincon on 21/02/23.
//

import UIKit

class ProductDescTableViewCell: UITableViewCell {

    
    static let identifier = "descriptionOfProduct"
    
    @IBOutlet weak var titleLabel : UILabel!{
        didSet{
            titleLabel.text = "Jam Tangan"
        }
    }
    
    @IBOutlet weak var priceLabel : UILabel!{
        didSet{
            priceLabel.text = "Rp 10.000"
        }
    }
    
    @IBOutlet weak var iconImage  : UIImageView!{
        didSet{
            iconImage.image = UIImage(named: "love")
        }
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
