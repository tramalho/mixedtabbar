//
//  Extensions.swift
//  MixedTabbar
//
//  Created by Thiago Antonio Ramalho on 30/06/18.
//  Copyright © 2018 Tramalho. All rights reserved.
//

import UIKit

extension UIView {
    func makeCircular() {
        self.layer.cornerRadius = min(self.frame.size.height, self.frame.size.width) / 2.0
        self.clipsToBounds = true
    }
}
