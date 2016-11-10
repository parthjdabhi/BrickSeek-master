//
//  UPCResultsViewController.swift
//  BrickSeek
//
//  Created by Dustin Allen on 10/28/16.
//  Copyright © 2016 Harloch. All rights reserved.
//

import UIKit

class UPCResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    @IBOutlet var zipField: UITextField!
    @IBOutlet var targetSKU: UILabel!
    @IBOutlet var walmartSKU: UILabel!
    @IBOutlet var tableView: UITableView!
    
    let cellReuseIdentifier = "UPCCell"
    var locationNameArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        self.title = "Search"
        
        productImage.imageFromUrl(productImageURL)
        productName.text = productNameJSON
        targetSKU.text = targetSKUInfo
        walmartSKU.text = walmartSKUInfo
        
        //print(storeInfo)
    }
    
    override func viewDidAppear(animated: Bool) {

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func zipGo(sender: AnyObject) {
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("UPCCell", forIndexPath: indexPath) as! UPCCell
        
        let storeStuff = storeInformation[indexPath.row]
        print(storeStuff)
        
        //cell = locationNameArray[indexPath.row] as! UPCCell
        //cell.addressField.text = storeAddresses[indexPath.row]
        cell.addressField.text = storeStuff.storeAddress
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationNameArray.count
    }

}
