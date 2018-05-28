//
//  CustomTabBarViewController.swift
//  MixedTabbar
//
//  Created by Thiago Antonio Ramalho on 27/05/18.
//  Copyright © 2018 Tramalho. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTabbar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func configTabbar() {
        
        if let items = self.tabBar.items {
            for item in items {
               item.badgeValue = "99+"
            }
        }
    }
    
    @objc
    func updateBadgeValue(position:Int, newValue : Int) {
        self.tabBar.items?[position].badgeValue = "\(newValue)"
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
