//
//  ViewController.swift
//  BullsEye
//
//  Created by Nelson Jaimes Gonzales on 30/08/18.
//  Copyright © 2018 UNMSM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue : Int = 0
    var targerValue : Int = 0
    var score : Int = 0
    var round: Int = 0
    
    @IBOutlet weak var lbRandom: UILabel!
    @IBOutlet weak var slProgress: UISlider!
    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbRound: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onClickStartOver()
        slProgress.setThumbImage(#imageLiteral(resourceName: "SliderThumb-Normal"), for: .normal)
        slProgress.setThumbImage(#imageLiteral(resourceName: "SliderThumb-Highlighted"), for: .highlighted)
        let insets = UIEdgeInsets.init(top: 0, left: 14, bottom: 0, right: 14)
        let trackLeftRezisable = #imageLiteral(resourceName: "SliderTrackLeft").resizableImage(withCapInsets: insets)
        let trackRigthtRezisable = #imageLiteral(resourceName: "SliderTrackRight").resizableImage(withCapInsets: insets)
        slProgress.setMaximumTrackImage(trackRigthtRezisable, for: .normal)
        slProgress.setMinimumTrackImage(trackLeftRezisable, for: .normal)
    }
    func startNewRound(){
        currentValue = 50
        targerValue = Int(arc4random_uniform(101))
        slProgress.value = Float(currentValue)
        round += 1
        self.updateLabels()
    }
    
    func updateLabels(){
        lbRandom.text = String(targerValue)
        lbScore.text = String(score)
        lbRound.text = String(round)
    }
    
    @IBAction func onClickStartOver(){
        round = 0
        score = 0
        startNewRound()
    }
    @IBAction func onClickHitMe() {
        var difference :Int
        var title : String
        difference = abs(currentValue - targerValue)
        var points = 100 - difference
        if difference == 0{
            title = "Congratulations \u{1F389}"
            points += 100
        }else if difference < 5 {
            title = "You almost had it! \u{1F60A}"
            if (difference == 1){
                points += 50
            }
        }else if difference < 10{
            title = "Pretty good ! \u{1F601}"
        }else {
            title = "Not even close \u{1F614}"
        }
        self.score += points
        let message = "New score : \(score) points"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
            })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMove(_ slider : UISlider){
        currentValue = Int(slider.value.rounded())
        print("progress:\(currentValue)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

