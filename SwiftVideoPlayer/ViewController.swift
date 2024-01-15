//
//  ViewController.swift
//  SwiftVideoPlayer
//
//  Created by Stephen R Smith on 1/15/24.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        PlayVideo()
    }
    
    func PlayVideo() {
        let videoURL = URL(string: "https://sample-videos.com/video321/mp4/720/big_buck_bunny_720p_10mb.mp4")
        guard let videoURL = videoURL else {return}
        
        let player = AVPlayer(url: videoURL)
        let vc = AVPlayerViewController()
        vc.player = player
        
        present(vc, animated: true) {
            vc.player?.play()
        }
    }


}

