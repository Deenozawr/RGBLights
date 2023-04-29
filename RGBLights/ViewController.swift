//
//  ViewController.swift
//  RGBLights
//
//  Created by Денис on 29/04/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewRGB: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewRGB.layer.cornerRadius = 10
        redSliderLabel.text = redSlider.value.formatted()
    }


}

