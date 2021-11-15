//
//  ViewController.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/8/21.
//

import UIKit


class DataTransfer{
    static var currentScore = 0
    static var computerChoice : Int!
    static var nameAndAge : (String,Int)!
}


class ViewController: UIViewController {
    var dark = false
    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var darkLabel: UILabel!
    @IBOutlet weak var switchOut: UISwitch!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var winLossOutlet: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let items = UserDefaults.standard.data(forKey: "score") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode(Int.self, from: items){
                DataTransfer.currentScore = decoded
            }
        }
        
        
        
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(DataTransfer.currentScore){
            UserDefaults.standard.set(encoded, forKey: "score")
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        pointLabel.text = String(DataTransfer.currentScore)
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if switchOut.isOn == true {
            dark = true
            view.backgroundColor = UIColor.black
            chooseLabel.textColor = UIColor.white
            darkLabel.textColor = UIColor.white
            winLossOutlet.textColor = UIColor.white
            pointLabel.textColor = UIColor.white
        } else {
            dark = false
            chooseLabel.textColor = UIColor.black
            view.backgroundColor = UIColor.white
            darkLabel.textColor = UIColor.black
            winLossOutlet.textColor = UIColor.black
            pointLabel.textColor = UIColor.black
        }
    }
    
    
    @IBAction func rockButton(_ sender: Any) {
        DataTransfer.computerChoice = Int.random(in: 0...2)
        
        performSegue(withIdentifier: "segueToRock", sender: nil)
    }
    
    @IBAction func paperButton(_ sender: Any) {
        DataTransfer.computerChoice = Int.random(in: 0...2)
        
        performSegue(withIdentifier: "segueToPaper", sender: nil)
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        DataTransfer.computerChoice = Int.random(in: 0...2)
        
        performSegue(withIdentifier: "segueToScissors", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToRock" {
            let nvc = segue.destination as! ViewController2

        } else if segue.identifier == "segueToPaper" {
            let nvc = segue.destination as! ViewController3

        } else if segue.identifier == "segueToScissors" {
            let nvc = segue.destination as! ViewController4

        }
    }
    @IBAction func addNAAButton(_ sender: Any) {
        DataTransfer.nameAndAge = (nameField.text!,Int(ageField.text!)!)
        
        nameLabel.text = DataTransfer.nameAndAge.0
        ageLabel.text = "\(DataTransfer.nameAndAge.1)"
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
    }

}

