//
//  ViewController.swift
//  Slot Machine
//
//  Created by Nathan Standage on 9/21/17.
//  Copyright © 2017 Nathan Standage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerOfNotLabel: UILabel!
    
    @IBOutlet weak var slotOne: UILabel!
    @IBOutlet weak var slotTwo: UILabel!
    @IBOutlet weak var slotThree: UILabel!
    let empty = ""
    
    var slot = SlotMachine()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.win
        winnerOfNotLabel.text = empty
        slotOne.text = empty
        slotTwo.text = empty
        slotThree.text = empty
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pullButtonPressed(_ sender: Any) {
        //resetting
        slot.match = false
        slot.winner = false
        winnerOfNotLabel.text = empty
        
       // displaying text
        let pull = slot.slotPull()
    
        if pull.count == 3 {
            slotOne.text = pull[0]
            slotTwo.text = pull[1]
            slotThree.text = pull[2]
        }
        
        
        //Winner or not?
        if slot.winner == true {
            winnerOfNotLabel.text = "JACKPOT!!!"
            
        } else if slot.match == true {
            winnerOfNotLabel.text = "WE HAVE A MATCH!"
        }
        
        
     
    }
    
}

