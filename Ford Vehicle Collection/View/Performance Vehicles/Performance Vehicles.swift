//
//  Performance Vehicles.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/9/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class PerformanceVehicles: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var PerformanceCollection = [Vehicle]()
    
    let ShelbyGT350 = Vehicle.init(pic: #imageLiteral(resourceName: "Shelby GT350"), year: 2018, name: "Shelby GT350", price: "From $55,845")
    let FordGT = Vehicle.init(pic: #imageLiteral(resourceName: "Ford GT"), year: 2018, name: "Ford GT", price: "From $450,000")
    let FocusRS = Vehicle.init(pic: #imageLiteral(resourceName: "Focus RS"), year: 2018, name: "Focus RS", price: "From $41,120")
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -32, max: 32)
        return PerformanceCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: PerformanceCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PerformanceCell
        cell.cellImage.image = PerformanceCollection[indexPath.row].pic
        cell.nameLabel.text = "\(PerformanceCollection[indexPath.row].year) \(PerformanceCollection[indexPath.row].name)"
        cell.priceLabel.text = PerformanceCollection[indexPath.row].price
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PerformanceCollection.removeAll()
        PerformanceCollection.append(FocusRS)
        PerformanceCollection.append(ShelbyGT350)
        PerformanceCollection.append(FordGT)
        
    }
    
    //MotionEffect Method
    func myMotionEffect(view: UIView, min: CGFloat, max: CGFloat) {
        
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        view.addMotionEffect(motionEffectGroup)
    }
    
}











