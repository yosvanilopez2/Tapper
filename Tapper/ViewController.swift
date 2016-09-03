//
//  ViewController.swift
//  Tapper
//
//  Created by Yosvani Lopez on 6/6/16.
//  Copyright © 2016 Yosvani Lopez. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    // properties
    var taps: Int = 0
    //outlets
    @IBOutlet weak var tapperLogo: UIImageView!
    @IBOutlet weak var tapperInput: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var tapperButton: UIButton!
    @IBOutlet weak var tapperCounter: UILabel!
    @IBAction func startGame(_ sender: UIButton) {
        if isValidInputText(tapperInput.text!) {
            tapperLogo.isHidden = true
            tapperInput.isHidden = true
            playButton.isHidden = true
            tapperButton.isHidden = false
            tapperCounter.isHidden = false
            setTapsCounter(taps)
        }
    }
    func resetGame() {
        taps = 0
        tapperInput.text = ""
        tapperLogo.isHidden = false
        tapperInput.isHidden = false
        playButton.isHidden = false
        tapperButton.isHidden = true
        tapperCounter.isHidden = true
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        taps = taps + 1
        setTapsCounter(taps)
        if isGameOver(taps) {
            resetGame()
        }
    }
    func setTapsCounter(_ tapNum: Int) {
        tapperCounter.text = String(tapNum) + " Taps"
        
    }
    func isGameOver(_ tapNum: Int) -> Bool {
        if tapNum == Int(tapperInput.text!) {
            return true
        }
        return false
    }
    func isValidInputText(_ inputText: String) -> Bool {
        if Int(inputText) != nil {
            return true
        }
        return false
    }
}

