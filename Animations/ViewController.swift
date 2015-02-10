//
//  ViewController.swift
//  Animations
//
//  Created by Marc Felden on 10.02.15.
//  Copyright (c) 2015 madeTK.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.threeTwoOneCounter()
    }

    func threeTwoOneCounter() {
        let fadeInTime:Double = 1.0
        let fadeOutTime:Double = 0.5
        let label = UILabel(frame: CGRectMake(self.view.bounds.width/2-50,100,100,100))
        label.text = "3"
        label.font = UIFont(name: "Arial", size: 50)
        label.textColor = UIColor.blackColor()
        label.textAlignment=NSTextAlignment.Center
        label.alpha = 0.0
        self.view.addSubview(label)

        UIView.animateWithDuration(fadeInTime, animations: { () -> Void in
            label.alpha = 1.0
        }) { (Bool) -> Void in
            
            UIView.animateWithDuration(fadeOutTime, animations: { () -> Void in
                label.alpha = 0.0
            }, completion: { (Bool) -> Void in
                label.text = "2"
                UIView.animateWithDuration(fadeInTime, animations: { () -> Void in
                    label.alpha = 1.0
                }, completion: { (Bool) -> Void in
                    UIView.animateWithDuration(fadeOutTime, animations: { () -> Void in
                        label.alpha = 0.0
                    }, completion: { (Bool) -> Void in
                        label.text = "1"
                        UIView.animateWithDuration(fadeInTime, animations: { () -> Void in
                            label.alpha=1.0
                        }, completion: { (BOOl) -> Void in
                            UIView.animateWithDuration(fadeOutTime, animations: { () -> Void in
                                label.alpha = 0.0
                            }, completion: { (Bool) -> Void in
                                println("done.maybe calling delegate now")
                            })
                        })
                    })
                })
                
            })
        }
        
        
    
        
        
    }
    
    

}

