//
//  Characters.swift
//  Star Wars Galaxy
//
//  Created by Deniz Nasif on 12/08/2016.
//  Copyright © 2016 Deniz Nasif. All rights reserved.
//

import UIKit

class Characters {
    
   var characters = ["Boba Fett" : "Empire", "Darth Vader" : "Empire", "Emperor Palpatine" : "Empire", "Han Solo" : "Rebel", "Jabba the Hutt" : "Empire", "Lando Calrissian" : "Rebel", "Leia Organa" : "Rebel", "Luke Skywalker" : "Rebel", "Nien Nunb" : "Rebel", "Rebel Fighter" : "Rebel", "Storm Trooper" : "Empire"]
    
    var count: Int {
        return characters.count
    }
    
    // Select a random character
    func randomCharacter() -> (String, String) {
        let randomIndex = Int(arc4random_uniform(UInt32(characters.count)))
        let randomCharacter = Array(characters.keys)[randomIndex]  // The character's name
        let characterSide = Array(characters.values)[randomIndex]  // The character's side
        
        // Return 2 String values, the key and the value
        return (randomCharacter, characterSide)
    }
    
    func matchLogoImage(characterSide: String) -> UIImage {
        if let logoImage = UIImage(named: "\(characterSide)_Logo") {
            return logoImage
        } else {
            return UIImage(named: "Rebel_Logo")!
        }
    }
    
    // Match background image to the random character name
    func matchCharacterImage(characterImage: String) -> UIImage {
        if let image = UIImage(named: characterImage) {
            return image
        } else {
            // return Sywalker as default. By default it is an optional so it must be unwrapped (!)
            return UIImage(named: "Luke Skywalker")!
        }
    }
    
    func setLogoImage(characterSide: String) -> UIImage {
        if let logoImage = UIImage(named: "\(characterSide)_Logo") {
            return logoImage
        } else {
            return UIImage(named: "Rebel_Logo")!
        }
    }
    
    func setButtonColor(characterSide: String) -> UIColor {
        if characterSide == "Empire" {
            return UIColor(red: 97/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.9)
        } else {
            return UIColor(red: 30/255.0, green: 0/255.0, blue: 127/255.0, alpha: 0.9)
        }
    }
    
}