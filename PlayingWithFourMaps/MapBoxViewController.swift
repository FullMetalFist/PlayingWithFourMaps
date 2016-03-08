//
//  MapBoxViewController.swift
//  PlayingWithFourMaps
//
//  Created by Michael Vilabrera on 3/8/16.
//  Copyright © 2016 Giving Tree. All rights reserved.
//

import UIKit
import Mapbox

class MapBoxViewController: UIViewController, MGLMapViewDelegate {

    var boxMap: MGLMapView?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.boxMap = MGLMapView()
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
        let mapFrame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        self.boxMap = MGLMapView(frame: mapFrame)
        self.boxMap?.setCenterCoordinate(CLLocationCoordinate2DMake(0.0, 0.0), zoomLevel: 0, animated: true)
        self.view.addSubview(self.boxMap!)
    }
}
