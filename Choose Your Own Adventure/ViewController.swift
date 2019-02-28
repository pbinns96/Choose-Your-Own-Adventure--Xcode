//
//  ViewController.swift
//  Choose Your Own Adventure
//
//  Created by Payton Binns on 2/14/19.
//  Copyright © 2019 Payton Binns. All rights reserved.
//

import UIKit
var characterName: String = "insert name"
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
       
  }
    
    @IBOutlet weak var nextButtonView: UIButton!
    @IBAction func screenPressed(_ sender: UITapGestureRecognizer) {print("working")
   introText.text = "One day, one of the beloved human residents of Crystal Lake fell ill. The whole town was distraught. Grace was one of the town's founding members, and while she was getting up there in age, no one was ready to see her go. The town doctor had never seen anything like it and did not think anything could be done. However, one brave townsperson had a plan."
        nextButtonView.alpha = 1
    }
    
    @IBAction func nextButton(_ sender: Any) {performSegue(withIdentifier: "goToCharacters", sender: nil)
    }
}
class ViewControllerThree: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       }

    @IBOutlet weak var characterDescription: UILabel!
    @IBAction func leifSelected(_ sender: Any) {characterDescription.text = "A woodland elf named Leif"
        characterName = "Leif"
    }
  
    @IBAction func violetSelected(_ sender: Any) {characterDescription.text = "A nature fairy named Violet"
     characterName = "Violet"
    }
    @IBAction func meredithSelected(_ sender: Any) {characterDescription.text = "A human named Meredith"
       characterName = "Meredith"
    }
    @IBAction func confirmButtonPressed(_ sender: Any) {
        print(characterName)
        performSegue(withIdentifier: "moveToFour", sender: nil)
       
        }
    
}
class ViewControllerFour: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
}
  
    @IBAction func moveToFive(_ sender: Any) {
        performSegue(withIdentifier: "moveToFive", sender: nil)
    }
   
}
class ViewControllerFive: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    
    @IBAction func trustMaxSelected(_ sender: Any) {
        performSegue(withIdentifier: "moveToSix", sender: nil)
    }
    
    @IBAction func distrustMaxSelected(_ sender: Any) {performSegue(withIdentifier: "characterDeath", sender: nil)
    }
}
class ViewControllerDeath: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    @IBAction func returnPressed(_ sender: Any) {performSegue(withIdentifier: "returnToStart", sender: nil)
    }
}
class ViewControllerSix: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
}
    
    @IBAction func nextToCave(_ sender: Any) {
        performSegue(withIdentifier: "moveToCave", sender: nil)
    }
    
 
}
class ViewControllerCave: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func screenToWeapon(_ sender: Any) {performSegue(withIdentifier: "moveToWeapons", sender: nil)
    }
    
    @IBAction func labelToWeapon(_ sender: Any) {performSegue(withIdentifier: "moveToWeapons", sender: nil)
    }
    
   
}
class ViewControllerWeapon: UIViewController {
    var weaponSelection: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func bowPressed(_ sender: Any) {
      weaponSelection = Int.random(in: 1...2)
        switch weaponSelection {
        case 1:
            performSegue(withIdentifier: "moveToEnd", sender: nil)
        case 2:
            performSegue(withIdentifier: "moveToKilled", sender: nil)
        default:
            break
        }
    }
    
    @IBAction func swordPressed(_ sender: Any) {
        weaponSelection = Int.random(in: 1...2)
        switch weaponSelection {
        case 1:
            performSegue(withIdentifier: "moveToEnd", sender: nil)
        case 2:
            performSegue(withIdentifier: "moveToKilled", sender: nil)
        default:
            break
    }
    }
    @IBAction func macePressed(_ sender: Any) {
        weaponSelection = Int.random(in: 1...2)
        switch weaponSelection {
        case 1:
            performSegue(withIdentifier: "moveToEnd", sender: nil)
        case 2:
            performSegue(withIdentifier: "moveToKilled", sender: nil)
        default:
            break
    }
}
}
class ViewControllerEnd: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
class ViewControllerDeathScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func returnStartPressed(_ sender: Any) {performSegue(withIdentifier: "backToStart", sender: nil)
    }
}



