//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Michael Doroff on 11/7/16.
//  Copyright © 2016 Michael Doroff. All rights reserved.
//

import UIKit

class ChoicesRPSViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var papperButton: UIButton!
    
    
    
    
    
    func getComputerMove() -> Int {
        return Int((arc4random() % 3))
        
    }
    

    func checkWinner(playerMove: Int, computerMove: Int) -> String {
        
        var winnerString: String = ""
    
        switch computerMove {
        case 0 where playerMove == 2:
            winnerString = "Scissors cuts paper"
            
        case 1 where playerMove == 0:
            winnerString = "Paper covers rock"
            
        case 2 where playerMove == 1:
            winnerString = "Rock crushes scissors"
        default:
            winnerString = "sorry, you lose, but a tie is also a loss."
        }
    
    
    
        return winnerString
    
    }
    
    
    
    @IBAction func performRPSScissors(sender: AnyObject)  {
        /* This is a function that gets called by the scissors button */
       
        var nextViewController: OutcomesViewController
        
        nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "OutcomesViewController") as! OutcomesViewController
        
        let computerMove = getComputerMove()
        
        
        if let tag = sender.tag {

            var winingString: String?
            
            winingString = checkWinner(playerMove: tag, computerMove: computerMove)
            
            nextViewController.winningString = winingString!
            present(nextViewController, animated: true, completion: nil)
  
        } else {
            print("You returned a nil value")
        }
        
    }

}


