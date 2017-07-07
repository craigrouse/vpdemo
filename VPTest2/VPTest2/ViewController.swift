//
//  ViewController.swift
//  VPTest2
//
//  Created by Craig Rouse on 07/07/2017.
//  Copyright © 2017 Craig Rouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var teal: Tealium?
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: replace "youraccount" with correct account
        let tealConfig = TealiumConfig(account: "youraccount", profile: "ios", environment: "dev", optionalData: nil)
        self.teal = Tealium(config:tealConfig)
        self.teal?.track(type: TealiumTrackType.view, title: "Launch Event", data: ["mylaunch":"true"], completion: nil)
        self.teal?.track(type: TealiumTrackType.view, title: "Launch Event 1", data: ["mylaunch":"true"], completion: nil)
        self.teal?.track(type: TealiumTrackType.view, title: "Launch Event 2", data: ["mylaunch":"true"], completion: nil)
        self.teal?.track(type: TealiumTrackType.view, title: "Launch Event 3", data: ["mylaunch":"true"], completion: nil)
        self.teal?.track(type: TealiumTrackType.view, title: "Launch Event 4", data: ["mylaunch":"true"], completion: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

