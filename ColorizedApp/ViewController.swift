//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Vlad on 30.4.23..
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 12
        setupSlider()
        setsColorView()
    }

    
    
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
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
        
    }
}

