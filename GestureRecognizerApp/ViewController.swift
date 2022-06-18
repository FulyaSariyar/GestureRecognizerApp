//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Fulya Sarıyar on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var isQueen = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let getureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(getureRecognizer)
        
    }
    
    @objc func changePic (){
        
        if isQueen == true {
            imageView.image = UIImage(named: "queen2")
            myLabel.text = "Gueen Gambit2"
            //isQueen = false
            
        }else{
            imageView.image = UIImage(named: "queen")
            myLabel.text = "Gueen Gambit"
         //isQueen = true
        }
        isQueen = !isQueen
        
    }
}

