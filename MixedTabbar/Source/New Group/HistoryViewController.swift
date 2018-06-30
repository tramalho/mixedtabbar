//
//  HistoryViewController.swift
//  MixedTabbar
//
//  Created by Thiago Antonio Ramalho on 30/06/18.
//  Copyright © 2018 Tramalho. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var overlay: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        configNavigationWithOverlay()
        
        configLabel()
    }
    
    fileprivate func configNavigationWithOverlay() {
        overlay.makeCircular()
        
        let navBar = self.navigationController?.navigationBar
        
        navBar?.addSubview(overlay)
        
        navBar?.bringSubview(toFront: overlay)
    }
    
    
    fileprivate func configLabel() {
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "Your Text")
        attributeString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        
        text.attributedText = attributeString
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
