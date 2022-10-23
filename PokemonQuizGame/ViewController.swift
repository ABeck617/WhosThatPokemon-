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
        
        pokemon += ["bulbasaur", "charmander", "chkorita", "cyndaquil", "mudkip", "squritle", "torchic", "totodile", "trecko"]
        
        // called the method askQuestion
        askQuestion()
        
    }
    
    
    // This method shows the three random flags images on the screen
    // setImage method lets us control what is on the screen
    func askQuestion(){
        pokemon.shuffle()
        button1.setImage(UIImage(named: pokemon[0]), for: .normal)
        button2.setImage(UIImage(named: pokemon[1]), for: .normal)
        button3.setImage(UIImage(named: pokemon[2]), for: .normal)
    }


}
