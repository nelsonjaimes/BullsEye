//
//  AboutAutorViewController.swift
//  BullsEye
//
//  Created by Nelson Jaimes Gonzales on 1/09/18.
//  Copyright © 2018 UNMSM. All rights reserved.
//

import UIKit

class AboutAutorViewController: UIViewController {

    @IBOutlet weak var ivProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ivProfile.layer.cornerRadius = ivProfile.bounds.size.width / 2.0
        self.ivProfile.clipsToBounds = true
        self.ivProfile.layer.borderWidth = 2.0
        self.ivProfile.layer.borderColor = #colorLiteral(red: 0.4352941176, green: 0.1725490196, blue: 0.06274509804, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onClickClose(){
        dismiss(animated: true, completion: nil)
    }
}
