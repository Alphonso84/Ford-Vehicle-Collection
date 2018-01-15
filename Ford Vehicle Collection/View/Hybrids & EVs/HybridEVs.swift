//
//  HybridEVs.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/9/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class HybridEVs: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var HybridCollection = [Vehicle]()
    
    let FusionHybrid = Vehicle.init(pic: #imageLiteral(resourceName: "FusionHybrid"), year: 2018, name: "Fusion Hybrid SE", price: "From $26,245")
    let CMaxEnergy = Vehicle.init(pic: #imageLiteral(resourceName: "C-Max Energy"), year: 2018, name: "CMax Energy", price: "From $27,129")
    let FocusElectric = Vehicle.init(pic: #imageLiteral(resourceName: "Focus Electric"), year: 2018, name: "Focus Electric", price: "From $29,120")
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
       return HybridCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HybridEVCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HybridEVCell
        cell.cellImage.image = HybridCollection[indexPath.row].pic
        cell.nameLabel.text = "\(HybridCollection[indexPath.row].year) \(HybridCollection[indexPath.row].name)"
        cell.priceLabel.text = HybridCollection[indexPath.row].price
        return cell
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        UIStatusBarStyle.lightContent
        //return UIStatusBarStyle.default   // Make dark again
        HybridCollection.removeAll()
        HybridCollection.append(FusionHybrid)
        HybridCollection.append(CMaxEnergy)
        HybridCollection.append(FocusElectric)
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
