//
//  ViewController.swift
//  Lesson2-Basic-Swift-Sample
//
//  Created by Monica Deswal on 25/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextfield: UITextField!
    
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
     @IBOutlet weak var twentyPctBtn: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInterface()
        // Do any additional setup after loading the view.
    }

    func setUpInterface() {
       // self.zeroPctBtn.layer
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
    }
    
    @IBAction func stepperValueChanged(_ sender: Any) {
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
    }
}

