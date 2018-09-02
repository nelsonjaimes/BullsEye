//
//  CustomUITextView.swift
//  BullsEye
//
//  Created by Nelson Jaimes Gonzales on 2/09/18.
//  Copyright © 2018 UNMSM. All rights reserved.
//
 import UIKit
import Foundation
extension UITextView{
    func alignTextVerticallyInContainer() {
        var topCorrect = (self.bounds.size.height - self.contentSize.height * self.zoomScale) / 2
        topCorrect = topCorrect < 0.0 ? 0.0 : topCorrect;
        self.contentInset.top = topCorrect
    }
}
