//
//  ViewController.swift
//  GeneAnimation
//
//  Created by Lars Isdahl on 26/02/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tap: UIButton!
    
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "gene"))
        imageView.center = CGPoint(x: 512, y: 384)
        view.addSubview(imageView)
    }

    @IBAction func clicked(_ sender: AnyObject) {
       

        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 4, options: [],
           animations: { [unowned self] in
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
            case 1:
                self.imageView.transform = CGAffineTransform.identity
            case 2:
                self.imageView.transform = CGAffineTransform(translationX: -128, y: 128)
            case 3:
                self.imageView.transform = CGAffineTransform.identity
            case 4:
                self.imageView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
            case 5:
                self.imageView.transform = CGAffineTransform.identity
            case 6:
                self.imageView.alpha = 0.1
                self.imageView.backgroundColor = UIColor.red
            case 7:
                self.imageView.alpha = 1
                self.imageView.backgroundColor = UIColor.clear
            default:
                break
            }
        })

        currentAnimation += 1

        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

