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
    @IBOutlet weak var mainLabelOutlet: UILabel!
    @IBOutlet weak var smallLabelOutlet: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if DataTransfer.darkMode == true {
            view.backgroundColor = UIColor.black
            mainLabelOutlet.textColor = UIColor.white
            smallLabelOutlet.textColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.white
            mainLabelOutlet.textColor = UIColor.white
            smallLabelOutlet.textColor = UIColor.white
        }
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        textViewOut.text = textFieldOut.text
        print("worked")
    }
    

}
