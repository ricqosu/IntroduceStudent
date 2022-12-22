//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Richard Quach on 12/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
//
        let introduction = "Hello! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I am currently a \(year!) year student at \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) pet(s). It is \(morePetsSwitch.isOn) that I want more pets."
        
        // Creates alert using the introduction created above
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // Dismisses the alert box
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passes the dismissing action to the alert controller
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

