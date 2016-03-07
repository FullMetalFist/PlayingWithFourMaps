//
//  MacMapViewController.swift
//  PlayingWithFourMaps
//
//  Created by Michael Vilabrera on 3/7/16.
//  Copyright © 2016 Giving Tree. All rights reserved.
//

import UIKit
import MapKit

class MacMapViewController: UIViewController, MKMapViewDelegate {
    
    var macMap: MKMapView?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.macMap = MKMapView()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.createViews()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createViews() {
        let macMapFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        self.macMap = MKMapView(frame: macMapFrame)
        self.view.addSubview(self.macMap!)
    }
    
    
}
