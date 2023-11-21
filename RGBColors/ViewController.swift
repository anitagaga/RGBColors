//
//  ViewController.swift
//  RGBColors
//
//  Created by Anita Gagarina on 11/17/23.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var mainColorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        redSliderSetup()
        greenSliderSetup()
        blueSliderSetup()
        mainViewSetup()
        
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
        
    }

    // MARK: - IB Actions
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "%.2f",redSlider.value)
        setColorForMainColorView ()
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        setColorForMainColorView ()
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "%.2f",blueSlider.value)
        setColorForMainColorView ()
    }
    
    // MARK: - Private Methods - Setup UI
    private func mainViewSetup() {
        mainColorView.layer.cornerRadius = 20
        setColorForMainColorView ()
    }
    private func redSliderSetup() {
        redSlider.minimumTrackTintColor = .red
        redSlider.value = 0.1
    }
    
    private func greenSliderSetup() {
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = 0.1
    }
    
    private func blueSliderSetup() {
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = 0.1
    }
    
    // MARK: - Private Methods - Others
    
    private func setColorForMainColorView () {
        mainColorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: 0.5)
    }
}

