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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad from point 1")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning")
        // Dispose of any resources that can be recreated.
    }


}

