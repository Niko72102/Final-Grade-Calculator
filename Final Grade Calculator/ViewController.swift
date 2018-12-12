//
//  ViewController.swift
//  Final Grade Calculator
//
//  Created by IMANOL MUNOZ on 11/12/18.
//  Copyright © 2018 IMANOL MUNOZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentGradeTextField: UITextField!
    @IBOutlet weak var desiredGradeTextField: UITextField!
    @IBOutlet weak var examWorthTextField: UITextField!
      @IBOutlet weak var yesOrNoLabel: UILabel!
    @IBOutlet weak var askATeacherLabel: UILabel!
    @IBOutlet weak var desiredGradeSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    
    @IBAction func calculateGradeOnTapped(_ sender: Any) {
    let currentGrade = Int(currentGradeTextField.text!)
    let desiredGrade = Int(desiredGradeTextField.text!)
    let examWorth = Int(examWorthTextField.text!)
    let doYouPass = (100 * desiredGrade! - (100 - examWorth!) * currentGrade!) / examWorth!
    print(doYouPass)
        if doYouPass >= desiredGrade!{
        yesOrNoLabel.text = "you need a \(doYouPass)"
        //(100 * desiredGrade - (100 - examWorth) * currentGrade) / examWorth
        }
        if doYouPass > 100{
            view.backgroundColor = .red
          askATeacherLabel.text = "ask a teacher for extra credit"
        }else{
            view.backgroundColor = .green
           
        }
    
    }
    @IBAction func desiredGradeSegmentedAction(_ sender: Any) {
    }
}
