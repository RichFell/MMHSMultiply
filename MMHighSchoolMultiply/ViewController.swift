//
//  ViewController.swift
//  MMHighSchoolMultiply
//
//  Created by Mobile Makers on 7/14/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField
    @IBOutlet var slider: UISlider
    @IBOutlet var labelMultiplyAmount: UILabel
    @IBOutlet var labelAnswer: UILabel
                            
    override func viewDidLoad()
    {
        super.viewDidLoad()

        slider.minimumValue = 0
        slider.maximumValue = 10
    }

    @IBAction func onButtonPressedMultiply(sender: AnyObject)
    {
        let int1 = textField.text.bridgeToObjectiveC().doubleValue
        let int2 = labelMultiplyAmount.text.bridgeToObjectiveC().doubleValue
        let answer = int1 * int2

        labelAnswer.text = "\(answer)"
        textField.resignFirstResponder()

        if answer % 5.0 == 0
        {
            view.backgroundColor = UIColor.greenColor()
        }

        if answer % 3.0 == 0
        {
            view.backgroundColor = UIColor.blueColor()
        }
    }
    @IBAction func onSlideChangeMultiplyLabel(sender: AnyObject)
    {
        let slider = sender as UISlider
        let value = round(slider.value)
        labelMultiplyAmount.text = "\(value)"
    }
}

