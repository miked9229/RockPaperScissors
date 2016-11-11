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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    
    @IBAction func performRPS(sender: AnyObject)  {
        

        
        
        let computerMove = getComputerMove()
        
        
        
        if let tag = sender.tag {


            switch computerMove {
                case 0 where sender.tag == 2:
                    print("Scissors cuts paper. You win!")
                
                case 1 where sender.tag == 0:
                     print("Paper covers rock. You win!")
                
                case 2 where sender.tag == 1:
                print("Rock crushes scissors. You win!")
            default:
                     print("sorry, you lose, but a tie is also a loss.")
            }
        } else {
            print("you have reached a nil value")
        }
        

    }


}

