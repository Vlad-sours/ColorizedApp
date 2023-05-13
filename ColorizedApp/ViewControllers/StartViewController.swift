//
//  StartViewController.swift
//  ColorizedApp
//
//  Created by Vlad on 12.5.23..
//

import UIKit

protocol SettingsViewControllerDelegate{
    func setColor(_ color: UIColor)
}

class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController
        else { return}
        

    }


}

// MARK: - ColorDelegate
extension StartViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
