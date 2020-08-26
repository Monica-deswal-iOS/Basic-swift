//
//  ViewController.swift
//  Lesson2-Basic-Swift-Sample
//
//  Created by Monica Deswal on 25/08/20.
//  Copyright © 2020 Monica Deswal. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTextfield: UITextField!
    
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
     @IBOutlet weak var twentyPctBtn: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var calculateBtn: UIButton!
    @IBOutlet weak var stepperButton: UIStepper!
    
    var viewModel = CalculateViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpInterface()
        textFieldEndEditing()
    }

    func setUpInterface() {
        self.zeroPctBtn.layer.cornerRadius = 3
        self.tenPctBtn.layer.cornerRadius = 3
        self.twentyPctBtn.layer.cornerRadius = 3
        self.calculateBtn.layer.cornerRadius = 8
        self.zeroPctBtn.isSelected = true
    }
    
    func textFieldEndEditing() {
        let viewGesture = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(viewGesture)
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        self.zeroPctBtn.isSelected = false
        self.tenPctBtn.isSelected = false
        self.twentyPctBtn.isSelected = false
        sender.isSelected = true
        viewModel.generateTip(value: sender.currentTitle!)
    }
    @IBAction func SteperValueChanged(_ sender: UIStepper) {
        let intValue = Int(sender.value)
        viewModel.numberOfPeople(count: intValue)
        self.splitNumberLabel.text = "\(intValue)"
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        if let textFieldValue = billTextfield.text , textFieldValue.count > 0 {
            viewModel.generateBill(textFieldVal: textFieldValue)
            self.performSegue(withIdentifier: "goToResults", sender: self)
        }else {
            print("Please enter the amount")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = viewModel.finalResult
            destinationVC.tip = Int(viewModel.tip * 100)
            destinationVC.split = viewModel.numberOfPeople
        }
    }
}

