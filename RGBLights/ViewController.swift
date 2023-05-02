//
//  ViewController.swift
//  RGBLights
//
//  Created by Денис on 29/04/2023.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var viewColour: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redSliderLabel: UILabel!
    @IBOutlet var greenSliderLabel: UILabel!
    @IBOutlet var blueSliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColour.layer.cornerRadius = 10
        
        redSliderLabel.text = String(format: "%.2f", round(redSlider.value * 100) / 100)
        greenSliderLabel.text = String(format: "%.2f", round(greenSlider.value * 100) / 100)
        blueSliderLabel.text = String(format: "%.2f", round(blueSlider.value * 100) / 100)
    }
    
    //MARK: - IBActions
    @IBAction func redSliderAction() {
        redSliderLabel.text = String(format: "%.2f", round(redSlider.value * 100) / 100)
        
        viewColourChange()
    }
    
    @IBAction func greenSliderAction() {
        greenSliderLabel.text = String(format: "%.2f", round(greenSlider.value * 100) / 100)
        
        viewColourChange()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderLabel.text = String(format: "%.2f", round(blueSlider.value * 100) / 100)
        
        viewColourChange()
    }
    
    //MARK: - Private Methods
    private func viewColourChange() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueSlider = CGFloat(blueSlider.value)
        let newColor = UIColor(red: redValue, green: greenValue, blue: blueSlider, alpha: 1.0)
        
        viewColour.backgroundColor = newColor
    }
    
}

