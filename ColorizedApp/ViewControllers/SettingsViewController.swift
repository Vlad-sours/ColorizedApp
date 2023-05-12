//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Vlad on 30.4.23..
//

import UIKit

class SettingsViewController: UIViewController {

// MARK: IBOutlet
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .gray
        colorView.layer.cornerRadius = 12
        setupSlider()
        setValueLabel()
    }
    
// MARK: IBAction
    
    @IBAction func colorSlaiderAction(_ selectedSlider: UIAction){
        setsColorView()
        switch selectedSlider {
            case redSlider:
            redLabel.text = stringFromSladerValue(redSlider)
            case greenSlider:
            greenLabel.text = stringFromSladerValue(greenSlider)
        default:
            blueLabel.text = stringFromSladerValue(blueSlider)
        }
    }
    
// MARK: Private method
    
    private func setsColorView() {
        colorView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
            )
    }
    
    private func setupSlider() {
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        redSlider.maximumTrackTintColor = .gray
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        greenSlider.maximumTrackTintColor = .gray
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .gray
        blueSlider.thumbTintColor = .blue
    }
    
    private func setValueLabel(){
        redLabel.text = stringFromSladerValue(redSlider)
        greenLabel.text = stringFromSladerValue(greenSlider)
        blueLabel.text = stringFromSladerValue(blueSlider)
        
    }
    private func stringFromSladerValue(_ slider: UISlider) -> String {
            String(format: "%.2f", slider.value)
        }
}

