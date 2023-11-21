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
        
        mainColorView.layer.cornerRadius = 20
        setColorForMainColorView ()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }

    // MARK: - IB Actions
    @IBAction func sliderAction(_ sender: UISlider) {
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
        
        setColorForMainColorView()
    }
    
    // MARK: - Private Methods - Others
    
    private func setColorForMainColorView () {
        mainColorView.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 0.5
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f",slider.value)
    }
}

extension Float {
    func cgFloat() -> CGFloat{
        CGFloat(self)
    }
}

