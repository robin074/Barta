//
//  ViewController.swift
//  Barta
//
//  Created by Apple MacBook Pro on 2/4/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit
import CarbonKit

class ViewController: UIViewController, CarbonTabSwipeNavigationDelegate {
    @IBOutlet weak var searchTapAction: UIBarButtonItem!
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        if index == 0 {
            let vc = storyboard?.instantiateViewController(identifier: "TopNewsViewController") as! TopNewsViewController
            return vc
            
        }
        if index == 1 {
            let vc = storyboard?.instantiateViewController(identifier: "SportsViewController") as! SportsViewController
            return vc
            
        }
        if index == 2 {
            let vc = storyboard?.instantiateViewController(identifier: "TravelViewController") as! TravelViewController
            return vc
            
        }
        if index == 3 {
            let vc = storyboard?.instantiateViewController(identifier: "PoliticsViewController") as! PoliticsViewController
            return vc
            
        }
       
        let vc = storyboard?.instantiateViewController(identifier: "EntertainmentsViewController") as! EntertainmentsViewController
        return vc
       
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         let items = ["Top News", "Sports", "Travel" , "Politics" , "Entertainment"]
        let carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
        carbonTabSwipeNavigation.insert(intoRootViewController: self)
        //start
        carbonTabSwipeNavigation.toolbar.isTranslucent = false
        carbonTabSwipeNavigation.toolbar.barTintColor = UIColor.systemGray
        carbonTabSwipeNavigation.setIndicatorColor(UIColor.white)
        carbonTabSwipeNavigation.setIndicatorHeight(2)
        carbonTabSwipeNavigation.setTabExtraWidth(16)
        //end
        
        carbonTabSwipeNavigation.toolbar.clipsToBounds = true
        carbonTabSwipeNavigation.setSelectedColor(UIColor.white, font: UIFont.systemFont(ofSize: 14))
        //set navigation bar without title
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style:.plain , target: nil, action: nil)
    
    }
    override var prefersStatusBarHidden: Bool {
         return true
    }
    
    @IBAction func SearchTapAction(_ sender: Any) {
        let vc1 = self.storyboard?.instantiateViewController(identifier: "SearchViewController") as! SearchViewController
        self.navigationController?.pushViewController(vc1, animated: true)
        
        
    }
    

}


