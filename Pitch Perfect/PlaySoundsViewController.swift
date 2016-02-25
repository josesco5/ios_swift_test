//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by InWork Solutions on 2/24/16.
//  Copyright (c) 2016 Udacity. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var slowSoundPath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var slowSoundURL = NSURL(fileURLWithPath: slowSoundPath)
            audioPlayer = AVAudioPlayer(contentsOfURL: slowSoundURL, error: nil)
            audioPlayer.enableRate = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowAction(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }

    @IBAction func playFastAction(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.rate = 1.5
        audioPlayer.play()
    }
    
    @IBAction func stopAction(sender: UIButton) {
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
