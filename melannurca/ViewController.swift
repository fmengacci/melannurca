//
//  ViewController.swift
//  melannurca
//
//  Created by Francesco Mengacci on 05/02/18.
//  Copyright © 2018 Francesco Mengacci. All rights reserved.
//
//  Modified on 09/02/2018 by FRAC'


import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var my_scroll: UIScrollView!
    @IBOutlet weak var my_enlarging_stuff: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        my_scroll.delegate = self
        my_scroll.minimumZoomScale = 0.2
        my_scroll.minimumZoomScale = 2
        my_scroll.setZoomScale(0.5, animated: true)
        my_enlarging_stuff.image = UIImage(named: "cucumber")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return my_enlarging_stuff
    }
}



