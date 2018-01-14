//
//  Trucks & Vans.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/9/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class TrucksVans: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var TruckCollection = [Vehicle]()
    //Creating Truck instances of type Vehicle. These are added to TruckCollection array in ViewDidLoad
    let F150 = Vehicle.init(pic: #imageLiteral(resourceName: "F150"), year: 2018, name: "F-150", price: "From 27,610")
    let SuperDuty = Vehicle.init(pic: #imageLiteral(resourceName: "SuperDuty"), year: 2018, name: "Super Duty", price: "From 32,890")
    let F150Raptor = Vehicle.init(pic: #imageLiteral(resourceName: "F150 Raptor"), year: 2018, name: "F-150 Raptor", price: "From $49,265")
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -32, max: 32)
        
        return TruckCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: TruckCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! TruckCell
        cell.cellImage.image = TruckCollection[indexPath.row].pic
        cell.nameLabel.text = "\(TruckCollection[indexPath.row].year) \(TruckCollection[indexPath.row].name)"
        cell.priceLabel.text = TruckCollection[indexPath.row].price
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TruckCollection.removeAll()
        TruckCollection.append(F150)
        TruckCollection.append(SuperDuty)
        TruckCollection.append(F150Raptor)
        
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
