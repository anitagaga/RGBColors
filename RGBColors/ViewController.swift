//
//  ViewController.swift
//  RGBColors
//
//  Created by Anita Gagarina on 11/17/23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var mainColorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainViewSetup()
        redSliderSetup()
        greenSliderSetup()
        blueSliderSetup()
        
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
        
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
        mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
        mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted()
        mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 0.5)
    }
    
    private func mainViewSetup() {
        mainColorView.layer.cornerRadius = 20
        mainColorView.backgroundColor = .white
    }
    private func redSliderSetup() {
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 0.1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
    }
    
    private func greenSliderSetup() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0.1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
    }
    
    private func blueSliderSetup() {
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0.1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }
}

