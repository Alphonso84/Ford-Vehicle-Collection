//
//  ViewController.swift
//  UI Fun
//
//  Created by user on 1/6/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import UIKit

var CarCollection = [Vehicle]()

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let Fiesta = Vehicle.init(pic:#imageLiteral(resourceName: "Fiesta") , year: 2018, name: "Fiesta", price: "From $14,115 ")
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CarCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

  
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
    }
   
    
}

