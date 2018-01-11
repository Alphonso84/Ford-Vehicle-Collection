//
//  ViewController.swift
//  UI Fun
//
//  Created by user on 1/6/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var CarCollection = [Vehicle]()
    //Creating Car instances of type Vehicle. These are added to CarCollection array in ViewDidLoad
    let Fiesta = Vehicle.init(pic:#imageLiteral(resourceName: "Fiesta") , year: 2018, name: "Fiesta", price: "From $14,115 ")
    let Focus = Vehicle.init(pic: #imageLiteral(resourceName: "Focus"), year: 2018, name: "Focus", price: "From $17,860")
    let Fusion = Vehicle.init(pic: #imageLiteral(resourceName: "Fusion"), year: 2018, name: "Fusion", price: "From $22,120")
    let CMax = Vehicle.init(pic:#imageLiteral(resourceName: "Cmax"), year: 2018, name: "C-Max", price: "From $24,120")
    let Mustang = Vehicle.init(pic: #imageLiteral(resourceName: "Mustang"), year: 2018, name: "Mustang", price: "From $25,585")
    let Taurus = Vehicle.init(pic: #imageLiteral(resourceName: "Taurus"), year: 2018, name: "Taurus", price: "From $27,595")
    
    //CollectionView & CollectionViewCell Setup
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
         myMotionEffect(view: collectionView, min: -32, max: 32)
        
        return CarCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CarCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CarCell
        cell.cellImage.image = CarCollection[indexPath.row].pic
        cell.nameLabel.text = "\(CarCollection[indexPath.row].year) \(CarCollection[indexPath.row].name)"
        cell.priceLabel.text = CarCollection[indexPath.row].price
    
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        CarCollection.removeAll()
        CarCollection.append(Fiesta)
        CarCollection.append(Focus)
        CarCollection.append(Fusion)
        CarCollection.append(CMax)
        CarCollection.append(Mustang)
        CarCollection.append(Taurus)
      
        
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

