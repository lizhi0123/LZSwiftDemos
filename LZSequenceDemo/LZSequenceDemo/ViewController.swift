//
//  ViewController.swift
//  LZSequenceDemo
//
//  Created by LiZhi on 2024/9/18.
//

import UIKit



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var abc: String? = nil
        // Do any additional setup after loading the view.

        let letters = "abracadabra"
        let letterCount = letters.reduce(into: [:]) { counts, letter in
            counts[letter, default: 0] += 1
        }
        // letterCount == ["a": 5, "b": 2, "r": 2, "c": 1, "d": 1]
        print("---- letterCount = ", letterCount)
    }
    
   
}
