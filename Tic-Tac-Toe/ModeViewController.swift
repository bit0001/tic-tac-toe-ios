//
//  ModeViewController.swift
//  Tic-Tac-Toe
//
//  Created by user on 11/10/16.
//  Copyright © 2016 mathsistor. All rights reserved.
//

import UIKit

class ModeViewController: UIViewController {
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "Single Player" {
                if let vc = segue.destination as? TicTacToeViewController {
                    vc.isSinglePlayer = true
                }
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
