//
//  ViewController.swift
//  Prime Numbers
//
//  Created by AlanArthur on 12/12/19.
//  Copyright © 2019 AlanArthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    func isPrime(number : Int) -> Bool {
        
        if number < 2 {
            return false
        } else if number == 2 {
            return true
        }
        var i = 2
        let limit = Int(ceil(sqrt(Double(number))))
        while i <= limit{
            if number % i == 0{
                return false
            }
            i += 1
        }
        return true
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        let number = Int(userInput.text!)
        
        if number == nil {
            outputLabel.text = " That is not a valid number."
        }else{
            let result = isPrime(number: number!)
            outputLabel.text = result ? "That's like Prime!" : "That's so not prime..."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

