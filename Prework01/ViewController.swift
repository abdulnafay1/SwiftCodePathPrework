//
//  ViewController.swift
//  Prework01
//
//  Created by Nafay on 1/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var morePets: UISwitch!
    @IBOutlet weak var numberOfPets: UILabel!
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: Any) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)

        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) dogs. It is \(morePets.isOn) that I want more pets."

        print(introduction)
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
}

