//
//  ViewController.swift
//  Basic Controls
//
//  Created by Bhavin Kansagara on 19/02/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblOne: UILabel!
    @IBOutlet var btnOne: UIButton!
    @IBOutlet var lblTwo: UILabel!
    @IBOutlet weak var lblFontSize: UILabel!
    
    var incrementor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from point 1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    //MARK:- Button Actions
    @IBAction func btnOnePressed(_ sender: Any) {
        incrementor = incrementor + 1
        if incrementor % 2 != 0 {
            self.lblOne.text = "odd here: \(incrementor)"
        } else {
            self.lblTwo.text = "even here: \(incrementor)"
        }
    }
    
    //MARK:- Slider Actions
    @IBAction func sliderStartsSliding(_ sender: Any) {
        let slider = sender as! UISlider
        let value = slider.value
        self.lblFontSize.text = "\(value)"
        self.lblOne.font = UIFont.systemFont(ofSize: CGFloat(value))
        self.lblTwo.font = UIFont.systemFont(ofSize: CGFloat(value))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning")
        // Dispose of any resources that can be recreated.
    }


}

