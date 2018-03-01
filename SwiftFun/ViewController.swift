//
//  ViewController.swift
//  SwiftFun
//
//  Created by Brian Estep on 2/28/18.
//  Copyright © 2018 Brian Estep. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    var count = 0;
    var s = ""
    
    @IBOutlet weak var TopTextField: UITextField!
    @IBOutlet weak var MyNewLabel: UILabel!
    @IBOutlet weak var BottomTextField: UITextField!
    
    @IBAction func AddButton(_ sender: Any) {
    }
    
    
    @IBAction func ResetCounterButton(_ sender: Any) {
        count = 0
        view.backgroundColor = UIColor.white
        MyNewLabel.text = "COUNTER RESET"
    }
    
    @IBAction func ButtonTapped(_ sender: Any) {
        count = count + 1
        
        if count == 10 {
            MyNewLabel.text = "SUCCESS"
            view.backgroundColor = UIColor.purple
            count = 0
        }
        else
        {
            s = String(count)
            MyNewLabel.text = "Count: " + s
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = UIColor.red
        //MyNewLabel.text = "Brian Rocks"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

