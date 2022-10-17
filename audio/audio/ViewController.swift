//
//  ViewController.swift
//  audio
//
//  Created by APPLE on 13/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    
    
    @IBAction func playAudio(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pauseAudio(_ sender: Any) {
        player.pause()
    }
    
    
    @IBAction func replayAudio(_ sender: Any) {
        player.currentTime = 0
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            
        }
        // Do any additional setup after loading the view.
    }


}

