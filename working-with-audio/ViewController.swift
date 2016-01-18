//
//  ViewController.swift
//  working-with-audio
//  Downloaded an audio sample from Piano Society
//  Added a two buttons (Play, Pause)
//  Added a slider for the volume control
//  Created by Gil Aguilar on 1/17/16.
//  Copyright © 2016 redeye-dev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    
        var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("bach", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath:audioPath))
            
            
        } catch {
            
        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

