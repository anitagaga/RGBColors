//
//  ColorViewController.swift
//  RGBColors
//
//  Created by Anita Gagarina on 12/7/23.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(_ color: UIColor)
}

final class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingViewController else { return }
        settingsVC.delegate = self
        settingsVC.viewColor = view.backgroundColor
    }

}

// MARK: = SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
