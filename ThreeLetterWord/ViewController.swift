//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by ANGEL GARCIA on 11/28/18.
//  Copyright © 2018 ANGEL GARCIA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentLetterLabel: UILabel!
    @IBOutlet var wordLabels: [UILabel]!
    
    var letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var counter = 3
    var currentLetter = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        getAndSetCurrentLetter()
    }
    @IBAction func onTapped(_ sender: UIGestureRecognizer){
        let selectedPoint = sender.location(in: view)
        for label in wordLabels {
            if label.frame.contains(selectedPoint){
                label.text = "\(currentLetter)"
            }
        }
        counter += 1
        if counter == 26 {
        
    }
    getAndSetCurrentLetter()
    }
    func getAndSetCurrentLetter() {
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
    }
    func resetCounter () -> Int {
        let alert = UIAlertController(title: "Reset Counter", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default) {
            (action) in
            for label in self.letters{
                label.text = "?"
            }
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        return 0 
    }
}

