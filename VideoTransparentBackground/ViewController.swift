//
//  ViewController.swift
//  VideoTransparentBackground
//
//  Created by Andrey Gordeev on 6/11/17.
//  Copyright © 2017 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var videoView: VideoView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.03, green:0.59, blue:0.31, alpha:1)

        videoView.configure(fileName: "goldDust")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(10.0 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: {
                self.videoView.play()
        })
    }
}

