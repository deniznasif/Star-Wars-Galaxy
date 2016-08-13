//
//  ViewController.swift
//  Star Wars Galaxy
//
//  Created by Deniz Nasif on 12/08/2016.
//  Copyright © 2016 Deniz Nasif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    
    var characters = Characters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let character = characters.randomCharacter()
        nameLabel.text = character.0
        
        // Access the name via dot notation (key)
        let image = characters.matchCharacterImage(character.0)
        backgroundImageView.image = image
        
        // Access the name via dot notation (value)
        let side = characters.matchLogoImage(character.1)
        logoImageView.image = side
        
        tapBtn.backgroundColor = characters.setButtonColor(character.1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func characterBtnDidTap(sender: UIButton) {
        let character = characters.randomCharacter()
        nameLabel.text = character.0
        
        let image = characters.matchCharacterImage(character.0)
        backgroundImageView.image = image
        
        let side = characters.matchLogoImage(character.1)
        logoImageView.image = side
        
        sender.backgroundColor = characters.setButtonColor(character.1)
    }
    


}

