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

