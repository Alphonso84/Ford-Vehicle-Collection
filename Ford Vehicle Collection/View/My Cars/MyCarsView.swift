//
//  MyCarsView.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/16/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class MyCars: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favortiteCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyCarsCell
        cell.myCarCellImage.image = favortiteCars[indexPath.row].pic
        cell.YearNameLabel.text = "\(favortiteCars[indexPath.row].year) \(favortiteCars[indexPath.row].name)"
        return cell
    }
    
    
    
}
