//
//  ViewController.swift
//  Instrument-App
//
//  Created by Ayşegül Koçak on 13.02.2023.
//

import UIKit
import AVFoundation //Audio visual foundation module

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
    
        playSound(soundName: sender.currentTitle ?? "C")
    }
    
    func playSound(soundName : String) {
            let url = Bundle.main.url(forResource: "\(soundName)", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
                    
        }
    

}

