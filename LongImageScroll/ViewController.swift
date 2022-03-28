//
//  ViewController.swift
//  LongImageScroll
//
//  Created by Jian Luo on 2021/10/24.
//

import UIKit

class ViewController: UIViewController {
    var bgImageView = UIImageView(image: UIImage(named: "bg"))
    var bgImageView2 = UIImageView(image: UIImage(named: "bg"))
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    
    func playAnimation(){
        UIView.animate(withDuration: 10, delay: 0, options: [.repeat, .curveLinear]) {
            self.bgImageView.frame.origin.y = -self.ScreenHeight*2
            
        }
        UIView.animate(withDuration: 10, delay: 0, options: [.repeat, .curveLinear]) {
            self.bgImageView2.frame.origin.y = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(bgImageView)
        self.view.addSubview(bgImageView2)
        bgImageView.frame = CGRect(x:0, y: 0, width: ScreenWidth, height: ScreenHeight*2)
        bgImageView2.frame = CGRect(x:0, y: ScreenHeight*2, width: ScreenWidth, height: ScreenHeight*2)
       playAnimation()

        
    }


}

