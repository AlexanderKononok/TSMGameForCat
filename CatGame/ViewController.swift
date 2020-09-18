//
//  ViewController.swift
//  CatGame
//
//  Created by Alexander Kononok on 9/16/20.
//  Copyright © 2020 Alexander Kononok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tapHereButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapHereButton.layer.cornerRadius = tapHereButton.frame.width / 2
    }
    
    @IBAction func moveTapHereButton(_ sender: Any) {
        generateNewCoordinate()
        generateNewColor()
    }
    
    func generateNewColor() {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        tapHereButton.backgroundColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    func generateNewCoordinate() {
        tapHereButton.frame.origin.x = CGFloat.random(in: 0...view.frame.width - tapHereButton.frame.width)
        tapHereButton.frame.origin.y = CGFloat.random(in: 0...view.frame.height - tapHereButton.frame.height)
    }
    
}

