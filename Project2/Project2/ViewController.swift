//
//  ViewController.swift
//  Project2
//
//  Created by Jeevan Mahtani on 24/8/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries: [String] = []
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        navigationController?.view.backgroundColor = .white
        
        var config = UIButton.Configuration.plain()
        config.imagePadding = 0
        config.contentInsets = .zero
        
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.gray.cgColor
        button1.configuration = config
        
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.gray.cgColor
        button2.configuration = config
        
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.gray.cgColor
        button3.configuration = config
        
        askQuestion()
    }


    func askQuestion() {
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
}

