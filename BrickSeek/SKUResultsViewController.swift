//
//  SKUResultsViewController.swift
//  BrickSeek
//
//  Created by Dustin Allen on 11/2/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class SKUResultsViewController: UIViewController {
    
    @IBOutlet var productName: UILabel!
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var msrpField: UILabel!
    @IBOutlet var discountedField: UILabel!
    @IBOutlet var stockField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        self.title = "Search"
        
        productImage.imageFromUrl(productImageURL)
        productName.text = productNameJSON
        msrpField.text = msrpInfo
        discountedField.text = discountInfo
        stockField.text = availableInfo
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
