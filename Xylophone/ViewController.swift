//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        setOpacity(button: sender, alpha: 0.5)
        playSound(soundToPlay: sender.currentTitle!)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
          //Brings sender's opacity back up to fully opaque.
            self.setOpacity(button: sender, alpha: 1)
        }

    }
    
    func playSound(soundToPlay: String) {
        let url = Bundle.main.url(forResource: soundToPlay, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    func setOpacity(button: UIButton, alpha: Float) {
        button.alpha = CGFloat(alpha)
    }
}




