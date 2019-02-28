//
//  ViewController.swift
//  Choose Your Own Adventure
//
//  Created by Payton Binns on 2/14/19.
//  Copyright © 2019 Payton Binns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func startButtonPushed(_ sender: Any) {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    
}
class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var introText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  }
    
    @IBAction func screenPressed(_ sender: UITapGestureRecognizer) {print("working")
   introText.text = "One day, one of the beloved human residents of Crystal Lake fell ill. The whole town was distraught. Grace was one of the town's founding members, and while she was getting up there in age, no one was ready to see her go. The town doctor had never seen anything like it and did not think anything could be done. However, one brave townsperson had a plan."
    }
    
}
class ViewControllerThree: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

}
