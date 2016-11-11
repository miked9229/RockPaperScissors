//
//  OutcomesViewController.swift
//  RockPaperScissors
//
//  Created by Michael Doroff on 11/11/16.
//  Copyright © 2016 Michael Doroff. All rights reserved.
//

import UIKit

class OutcomesViewController: UIViewController {

    var winningString: String?
    @IBOutlet weak var winningStringLabel: UILabel!
    @IBOutlet weak var winningImage: UIImageView!
    
    
    func displayImage(winningString: String?) {
        
        if let winningString = winningString {
            if winningString == "Paper covers rock" {
                self.winningImage.image = UIImage(named: "d3")
            }
            else if  winningString == "Scissors cuts paper" {
                self.winningImage.image = UIImage(named: "d1")
            }
            else if winningString == "Rock crushes scissors" {
                self.winningImage.image = UIImage(named: "d2")
            } else {
                self.winningImage.image = UIImage(named: "b")
            }

            
        
        
 
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        
        
        if let winningString = winningString {
            
            
            winningStringLabel.text? = winningString
            displayImage(winningString: winningString)
            
            
        }
        
    }


}
