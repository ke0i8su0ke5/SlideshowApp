//
//  ZoomUpViewController.swift
//  SlideshowApp
//
//  Created by 高崎 慶輔 on 2017/04/02.
//  Copyright © 2017年 Keisuke Takasaki. All rights reserved.
//

import UIKit

class ZoomUpViewController: UIViewController {

    @IBOutlet weak var zoomUpImage: UIImageView!
    
    var selectedImage:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 遷移元画面で選択された画像を表示する
        zoomUpImage.image = selectedImage
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
