//
//  ResultViewController.swift
//  Gacha
//
//  Created by Yuka Uematsu on 2020/05/13.
//  Copyright © 2020 Uematsu Well. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //乱数　Int型の変数
    var number: Int!
    
    //背景&おかしのImageView
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var okashiImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        number = Int.random(in: 0...7)
        if number == 7 {
        okashiImageView.image = UIImage(named: "お菓子　ショートケーキ.jpg")
        backgroundImageView.image = UIImage(named: "images-1")
        
    }else if number > 6 {
        okashiImageView.image = UIImage(named: "お菓子　プリン.jpg")
        backgroundImageView.image = UIImage(named: "images-1")
 
    }else if number > 5 {
        okashiImageView.image = UIImage(named: "お菓子　チョコレート.jpg")
        backgroundImageView.image = UIImage(named: "images-1.jpg")
    }else if number > 3 {
        okashiImageView.image = UIImage(named: "お菓子　ポテチ.jpg")
        backgroundImageView.image = UIImage(named: "images.jpg")
    }else {
        okashiImageView.image = UIImage(named: "お菓子　柿ピー.jpg")
        backgroundImageView.image = UIImage(named: "images.jpg")
        }
}
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
