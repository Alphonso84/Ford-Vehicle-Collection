//
//  SUVCrossovers.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/9/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var SUVCollection = [Vehicle]()

class SUVViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    //Creating SUV instances of type Vehicle. These are added to SUVCollection array in ViewDidLoad
    let EcoSport = Vehicle.init(pic:#imageLiteral(resourceName: "EcoSPort") , year: 2018, name: "EcoSport", price: "From $19,995 ")
    let Escape = Vehicle.init(pic: #imageLiteral(resourceName: "Escape"), year: 2018, name: "Escape", price: "From $23,850")
    let Edge = Vehicle.init(pic: #imageLiteral(resourceName: "Edge"), year: 2018, name: "Edge", price: "From $29,220")
    let Flex = Vehicle.init(pic: #imageLiteral(resourceName: "Flex"), year: 2018, name: "Flex", price: "From $30,195")
    let Explorer = Vehicle.init(pic: #imageLiteral(resourceName: "Explorer"), year: 2018, name: "Explorer", price: "From $31,990")
    let Expedition = Vehicle.init(pic: #imageLiteral(resourceName: "Expedition"), year: 2018, name: "Expedition", price: "From $51,695")
    
    //CollectionView & CollectionViewCell Setup
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
       myMotionEffect(view: collectionView, min: -32, max: 32)
        
        return SUVCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SUVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SUVCell
        cell.SUVcellImage.image = SUVCollection[indexPath.row].pic
        cell.nameLabel.text = "\(SUVCollection[indexPath.row].year) \(SUVCollection[indexPath.row].name)"
        cell.priceLabel.text = SUVCollection[indexPath.row].price
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SUVCollection.removeAll()
        SUVCollection.append(EcoSport)
        SUVCollection.append(Escape)
        SUVCollection.append(Edge)
        SUVCollection.append(Flex)
        SUVCollection.append(Explorer)
        SUVCollection.append(Expedition)
        
        
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
