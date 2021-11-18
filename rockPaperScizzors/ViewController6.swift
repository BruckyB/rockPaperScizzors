//
//  ViewController6.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/11/21.
//

import UIKit
//struct
struct HighScore {
    var score : Int
    
}

class ViewController6: UIViewController {

    @IBOutlet weak var textField2: UITextField!
    //arrays
    var highScoreName : [String] = []
    var highScore : [Int] = []
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        if DataTransfer.darkMode == true {
            view.backgroundColor = UIColor.black
            textView.textColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.white
            textView.textColor = UIColor.black
        }
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        var newHighScore = HighScore(score: Int(textField2.text!)!)
        highScore.append(newHighScore.score)
        textView.text = ""
        //for loops
        for items in highScore {
            textView.text = textView.text + "\(items)\n"
        }
        
    }
    

    

}
