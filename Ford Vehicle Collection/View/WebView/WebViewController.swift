//
//  WebViewController.swift
//  Ford Vehicle Collection
//
//  Created by user on 1/15/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class Browser: UIViewController {
    
    @IBOutlet weak var website: WKWebView!
    
    var url: URL!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        website.navigationDelegate = self as? WKNavigationDelegate
        url = URL(string:"https://shop.ford.com/showroom/?gnav=header-tools&linktype=build#/")
        website.load(URLRequest(url: url))
    }
    
}


















