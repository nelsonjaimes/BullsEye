//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Nelson Jaimes Gonzales on 1/09/18.
//  Copyright © 2018 UNMSM. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var tvAbout: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tvAbout.alignTextVerticallyInContainer()
    }
    
    @IBAction func onClickClose() {
        dismiss(animated: true, completion: nil)
    }
}
