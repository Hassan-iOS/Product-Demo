//
//  ViewController.swift
//  Mids-Product-Demo
//
//  Created by Hassan Mostafa on 7/21/19.
//  Copyright © 2019 Minds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var emailTF: UITextField!
  @IBOutlet weak var passwordTF: UITextField!
  @IBOutlet weak var loginButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpViews()
  }
  
  func setUpViews() {
    loginButton.backgroundColor = Theme.mainColor
    navigationController?.navigationBar.barTintColor = Theme.mainColor
    title = "Login"
    let attributedString =
      [NSAttributedString.Key.foregroundColor: Theme.secondaryColor,
       NSAttributedString.Key.font: UIFont(name: Theme.mainFont, size: 21)!]
    navigationController?.navigationBar.titleTextAttributes = attributedString
    loginButton.tintColor = Theme.secondaryColor
    loginButton.setTitle("LOGIN", for: .normal)
    loginButton.titleLabel?.font = UIFont(name: Theme.mainFont, size: 20)
  }
  @IBAction func loginButtonPressed(_ sender: Any) {
    switch Theme.AppID {
    case 1:
      performSegue(withIdentifier: "goToNormalGrid", sender: nil)
    case 2:
      performSegue(withIdentifier: "goToPinterestGrid", sender: nil)
      
    default:
      break
    }
  }
}

