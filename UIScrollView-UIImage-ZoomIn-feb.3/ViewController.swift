//
//  ViewController.swift
//  UIScrollView-UIImage-ZoomIn-feb.3
//
//  Created by Pursuit on 2/3/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var subwayMap: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
        // provide a max zoom scale greater than 1. 1 is the
        //default value if not set it wont zoom
        
        scrollView.maximumZoomScale = 5.0 
    }
    
    


}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayMap // is all it needs because it is a view
    }
}
