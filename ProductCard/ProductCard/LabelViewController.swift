//
//  LabelViewController.swift
//  ProductCard
//
//  Created by Phincon on 21/02/23.
//

import UIKit
class LabelViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableview : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.delegate = self
        self.tableview.dataSource = self
//        self.tableview.separatorStyle = .none
        
        
//        let detailNib = UINib(nibName: "ProductDescTableViewCell", bundle: nil)
//        self.tableview.register(detailNib, forCellReuseIdentifier: ProductDescTableViewCell.identifier)
//
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: ProductDescTableViewCell.identifier, for: indexPath) as? ProductDescTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    

}


