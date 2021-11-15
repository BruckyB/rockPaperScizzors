//
//  ViewController5.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/9/21.
//

import UIKit

class ViewController5: UIViewController {
    @IBOutlet weak var textViewOut: UITextView!
    @IBOutlet weak var textFieldOut: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        textViewOut.text = textFieldOut.text
        print("worked")
    }
    

}
