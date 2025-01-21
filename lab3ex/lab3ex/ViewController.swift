//
//  ViewController.swift
//  lab3ex
//
//  Created by Tech on 2025-01-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var prevValue: Int = 0
    var doingMath: Bool = false
    
    var operation: String? = nil
    
    private var _value: Int = 0
    var value: Int {
        get {
            _value
        }
        set {
            _value = newValue
            label.text = "\(_value)"
        }
    }
    
    func doMath(a: Int, b: Int, op: String) -> Int {
        switch op {
        case "+": return a + b
        case "-": return a - b
        case "*": return a * b
        case "/": return b != 0 ? a / b : 0
        default: return 0
        }
    }
    
    @IBAction func numberButtonAction(_ sender: UIButton) {
        if !doingMath {
            if value == 0 {
                value = sender.tag
            } else {
                value = value * 10 + sender.tag
            }
        } else {
            doingMath = false
            prevValue = value
            value = sender.tag
        }
    }
    
    @IBAction func actionButtionAction(_ sender: UIButton) {
        if let op = sender.titleLabel?.text {
            switch op {
            case "+", "-", "*", "/":
                operation = op
                doingMath = true
                prevValue = value
            case "=":
                if let operation = operation {
                    value = doMath(a: prevValue, b: value, op: operation)
                    self.operation = nil
                }
            case "C":
                value = 0
                prevValue = 0
                operation = nil
                doingMath = false
            
            default:
                break
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        value = 0
    }
}

