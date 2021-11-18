//
//  ViewController7.swift
//  rockPaperScizzors
//
//  Created by JOHN BRUCKER on 11/16/21.
//

import UIKit

class ViewController7: UIViewController {
    @IBOutlet weak var label: UILabel!
    var based = false
    override func viewDidLoad() {
        super.viewDidLoad()
        balls()
        
    }
    
    @IBAction func epicButton(_ sender: Any) {
        balls()
    }
    //optional and while loop
    func balls(){
        var i = 10
        while i != 0 {
            label.text = (label.text ?? "") + "epic"
            i = i - 1
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
