//
//  ViewController.swift
//  VariableFun
//
//  Created by DANIEL HUSEBY on 8/26/24.
//

import UIKit

// steps to get return key to dismiss keyboard
// 1) add a delegate
// 2) attach the delegate to textfield
// 3) write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    var pony = 6 // constant declared and initialized (type inference)
    var dog = 7.5 // declare and initialize a variable
    var cat: Int? // declaring an Optional(could be nill)
    var horse: Double! // declaring a non Optional(can't be nil)
    var ant: String = "" // declaring a variable (must initialize in init/constructor)
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldOutlet.delegate = self
        cat = 7
        print(Double(pony) + dog)
        if let blah = cat{
            print(blah + 5)
            print("cat is \(blah)")
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        var pig = textFieldOutlet.text!
        var frog = Int(pig) ?? 0
        print(frog + 5)
    }
    // function automatically gets called when user hits return on keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

