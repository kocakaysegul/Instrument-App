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
        playSound()
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    

}

