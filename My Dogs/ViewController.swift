//
//  ViewController.swift
//  My Dogs
//
//  Created by admin on 18/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogName: UITextField!
    @IBOutlet weak var dogColor: UITextField!
    @IBOutlet weak var dogTreat: UITextField!
    @IBOutlet weak var dogImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        let dog = Dog(name: String(dogName.text!), color: dogColor.text!, treat: dogTreat.text!, image: dogImage.image!)
        self.navigationController?.popViewController(animated: true)
    }

}

