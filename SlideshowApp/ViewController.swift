//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 高崎 慶輔 on 2017/03/31.
//  Copyright © 2017年 Keisuke Takasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer: Timer!
    var count: Int = 0
    let imageArray: [UIImage] =
        [UIImage(named: "one")!, UIImage(named: "two")!, UIImage(named: "three")!, UIImage(named: "four")!]
    
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slideImage.image = imageArray[count]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func prev(_ sender: Any) {
        if (count == imageArray.count - 1) {
            count = 0
        } else {
            count+=1
        }
        slideImage.image = imageArray[count]
    }

    @IBAction func back(_ sender: Any) {
        if (count == 0) {
            count = imageArray.count - 1
        } else {
            count-=1
        }
        slideImage.image = imageArray[count]
    }
    
    @IBAction func start_stop(_ sender: Any) {
        if self.startStopButton.titleLabel!.text == "再生" {
            if self.timer == nil {
                self.timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(prev),userInfo: nil, repeats: true)
            }
            // 進む、戻るボタンをタップ不可にする
            self.prevButton.isEnabled = false
            self.backButton.isEnabled = false
            
            // ボタン名を変更
            self.startStopButton.setTitle("停止", for: UIControlState.normal)
        } else {
            if self.timer != nil {
                self.timer.invalidate()
                self.timer = nil
            }
            // 進む、戻るボタンをタップ可にする
            self.prevButton.isEnabled = true
            self.backButton.isEnabled = true
            
            // ボタン名を変更
            self.startStopButton.setTitle("再生", for: UIControlState.normal)
        }
    }
}

