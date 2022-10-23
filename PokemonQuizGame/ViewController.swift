//
//  ViewController.swift
//  PokemonQuizGame
//
//  Created by Anthony Beckford on 10/20/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button3: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button1: UIButton!
    
    
    var score = 0
    var pokemon = [String]()
    
    // new property to track
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        
        
        
        
        
        
        pokemon += ["bulbasaur", "charmander", "chkorita", "cyndaquil", "mudkip", "squritle", "torchic", "totodile", "trecko"]
        
        // called the method askQuestion
        askQuestion()
        
    }
    
    
    // This method shows the three random flags images on the screen
    // setImage method lets us control what is on the screen
    func askQuestion(){
        pokemon.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: pokemon[0]), for: .normal)
        button2.setImage(UIImage(named: pokemon[1]), for: .normal)
        button3.setImage(UIImage(named: pokemon[2]), for: .normal)
        
        title = pokemon[correctAnswer].uppercased()
    }


}

