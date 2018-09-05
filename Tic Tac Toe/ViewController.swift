//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Tiange Wang on 9/4/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var tl_btn: UIButton!
    @IBOutlet weak var t_btn: UIButton!
    @IBOutlet weak var tr_btn: UIButton!
    @IBOutlet weak var l_btn: UIButton!
    @IBOutlet weak var m_btn: UIButton!
    @IBOutlet weak var r_btn: UIButton!
    @IBOutlet weak var bl_btn: UIButton!
    @IBOutlet weak var b_btn: UIButton!
    @IBOutlet weak var br_btn: UIButton!
    
    var btns = [0, 0, 0,
                0, 0, 0,
                0, 0, 0]
    var p1turn = true
    
    
    @IBAction func resetGame(_ sender: UIButton) {
        btns = [
            0, 0, 0,
            0, 0, 0,
            0, 0, 0
        ]
        p1turn = true
        tl_btn.backgroundColor = UIColor.white
        t_btn.backgroundColor = UIColor.white
        tr_btn.backgroundColor = UIColor.white
        l_btn.backgroundColor = UIColor.white
        m_btn.backgroundColor = UIColor.white
        r_btn.backgroundColor = UIColor.white
        bl_btn.backgroundColor = UIColor.white
        b_btn.backgroundColor = UIColor.white
        br_btn.backgroundColor = UIColor.white
        winnerLabel.isHidden = true
    }
    
    @IBAction func top_left(_ sender: UIButton) {
        if btns[0] == 0 {
            if p1turn == true {
                btns[0] = 1
                tl_btn.backgroundColor = UIColor.blue
            } else {
                btns[0] = 2
                tl_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func top(_ sender: UIButton) {
        if btns[1] == 0 {
            if p1turn == true {
                btns[1] = 1
                t_btn.backgroundColor = UIColor.blue
            } else {
                btns[1] = 2
                t_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func top_right(_ sender: UIButton) {
        if btns[2] == 0 {
            if p1turn == true {
                btns[2] = 1
                tr_btn.backgroundColor = UIColor.blue
            } else {
                btns[2] = 2
                tr_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func left(_ sender: UIButton) {
        if btns[3] == 0 {
            if p1turn == true {
                btns[3] = 1
                l_btn.backgroundColor = UIColor.blue
            } else {
                btns[3] = 2
                l_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func mid(_ sender: UIButton) {
        if btns[4] == 0 {
            if p1turn == true {
                btns[4] = 1
                m_btn.backgroundColor = UIColor.blue
            } else {
                btns[4] = 2
                m_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func right(_ sender: UIButton) {
        if btns[5] == 0 {
            if p1turn == true {
                btns[5] = 1
                r_btn.backgroundColor = UIColor.blue
            } else {
                btns[5] = 2
                r_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func bottom_left(_ sender: UIButton) {
        if btns[6] == 0 {
            if p1turn == true {
                btns[6] = 1
                bl_btn.backgroundColor = UIColor.blue
            } else {
                btns[6] = 2
                bl_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func bottom(_ sender: UIButton) {
        if btns[7] == 0 {
            if p1turn == true {
                btns[7] = 1
                b_btn.backgroundColor = UIColor.blue
            } else {
                btns[7] = 2
                b_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    @IBAction func bottom_right(_ sender: UIButton) {
        if btns[8] == 0 {
            if p1turn == true {
                btns[8] = 1
                br_btn.backgroundColor = UIColor.blue
            } else {
                btns[8] = 2
                br_btn.backgroundColor = UIColor.orange
            }
            updateBoard()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBoard() {
        if (btns[0] == btns[1] && btns[1] == btns[2] && btns[1] == 1) ||
        (btns[3] == btns[4] && btns[4] == btns[5] && btns[4] == 1) ||
        (btns[6] == btns[7] && btns[7] == btns[8] && btns[7] == 1) ||
        (btns[0] == btns[3] && btns[3] == btns[6] && btns[3] == 1) ||
        (btns[1] == btns[4] && btns[4] == btns[7] && btns[4] == 1) ||
        (btns[2] == btns[5] && btns[5] == btns[8] && btns[5] == 1) ||
        (btns[0] == btns[4] && btns[4] == btns[8] && btns[4] == 1) ||
        (btns[2] == btns[4] && btns[4] == btns[6] && btns[4] == 1) {
            winnerLabel.text = "Congrats Blue Won"
            winnerLabel.isHidden = false
            btns = [-1, -1, -1, -1, -1, -1, -1, -1, -1]
        } else if (btns[0] == btns[1] && btns[1] == btns[2] && btns[1] == 2) ||
        (btns[3] == btns[4] && btns[4] == btns[5] && btns[4] == 2) ||
        (btns[6] == btns[7] && btns[7] == btns[8] && btns[7] == 2) ||
        (btns[0] == btns[3] && btns[3] == btns[6] && btns[3] == 2) ||
        (btns[1] == btns[4] && btns[4] == btns[7] && btns[4] == 2) ||
        (btns[2] == btns[5] && btns[5] == btns[8] && btns[5] == 2) ||
        (btns[0] == btns[4] && btns[4] == btns[8] && btns[4] == 2) ||
        (btns[2] == btns[4] && btns[4] == btns[6] && btns[4] == 2) {
            winnerLabel.text = "Congrats Orange Won"
            winnerLabel.isHidden = false
            btns = [-1, -1, -1, -1, -1, -1, -1, -1, -1]
        } else if btns[0] != 0 && btns[1] != 0 && btns[2] != 0 && btns[3] != 0 && btns[4] != 0 && btns[5] != 0 && btns[6] != 0 && btns[7] != 0 && btns[8] != 0 {
            winnerLabel.text = "Tie..."
            winnerLabel.isHidden = false
            btns = [-1, -1, -1, -1, -1, -1, -1, -1, -1]
        }
        
        
        if p1turn == true {
            p1turn = false
        } else {
            p1turn = true
        }
    }


}

