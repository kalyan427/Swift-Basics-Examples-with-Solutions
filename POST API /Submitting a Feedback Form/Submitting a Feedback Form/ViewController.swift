//
//  ViewController.swift
//  Submitting a Feedback Form
//
//  Created by kalyan . on 1/14/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func makePOSTAPICall() {
        guard let url = URL(string: "https://httpbin.org/post") else {
            print("Error")
            return
        }
    }
    
    
}
