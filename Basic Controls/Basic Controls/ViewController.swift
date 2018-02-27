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
    @IBOutlet weak var sliderFontSize: UISlider!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
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
    
    //MARK: - Switch Actions
    @IBAction func switchValueChanged(_ sender: Any) {
        let switchUI = sender as! UISwitch
        self.sliderFontSize.isUserInteractionEnabled = switchUI.isOn
    }
    
    //MARK:- Segment Control
    @IBAction func segmentChanged(_ sender: Any) {
      let segmentControl = sender as! UISegmentedControl
        switch segmentControl.selectedSegmentIndex {
        case 0:
            print("One pressed")
        case 1:
            print("Two pressed")
        default:
            print("default")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning")
        // Dispose of any resources that can be recreated.
    }


}

