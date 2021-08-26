//
//  ViewController.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 04/08/21.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let path = Bundle.main.path(forResource: "video2", ofType:"mov") else {
                    debugPrint("video.m4v not found")
                    return
                }
        let videoURL = URL(string: "https://www.youtube.com/watch?v=EouN_u5lhos")
        let player = AVPlayer(url: URL(fileURLWithPath: path))
//        let player = AVPlayer(url: )
//        let playerController = AVPlayerViewController()
//               playerController.player = player
//               present(playerController, animated: true) {
//                   player.play()
//               }
        let layer = AVPlayerLayer(player: player)
        layer.frame = self.view.bounds
        self.view.layer.addSublayer(layer)
        player.play()
    }
}
