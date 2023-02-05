//
//  ViewController.swift
//  Pre-work
//
//  Created by Bohdan Tkachenko on 2/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedController: UISegmentedControl!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceButtopnTapped(_ sender: UIButton) {
        
        guard let firstName = firstNameTextField.text, !firstName.isEmpty,
              let lastName = lastNameTextField.text, !lastName.isEmpty,
              let schoolName = schoolNameTextField.text, !schoolName.isEmpty,
              let yearOfSchool = yearSegmentedController.titleForSegment(at: yearSegmentedController.selectedSegmentIndex), !yearOfSchool.isEmpty,
              let numberOfPets = numberOfPetsLabel.text, !numberOfPets.isEmpty
        else {
            
            let alertController = UIAlertController(title: "Ouch...", message: "Please fill out form!", preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Will do!", style: .default, handler: nil)
            
            alertController.addAction(action)
            
            present(alertController, animated: true, completion: nil)
            
            return
            
        }
        
        let textIntro: String = morePetsSwitch.isOn ? "I would love to have more pets!" : "At this time i do not want to have pets =("
        
        let introduction = "My name is \(firstName) \(lastName) and I attend \(schoolName). I am currently in my \(yearOfSchool) year and I own \(numberOfPets) pets. \(textIntro)"
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

