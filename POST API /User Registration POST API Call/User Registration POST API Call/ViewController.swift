//
//  ViewController.swift
//  User Registration POST API Call
//
//  Created by kalyan . on 1/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makePOSTAPICall()
    }
    
    func makePOSTAPICall() {
        guard let url = URL(string: "https://httpbin.org/post") else {
            print("Error")
            return
        }
        
        let userData: [String: Any] = [
            "username": "admin",
            "password": "password123"
        ]
        
        guard let jsonData = try? JSONSerialization.data(withJSONObject: userData) else {
            print("Error")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error")
            }
            
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                print("\(dataString)")
            }
        }.resume()
    }
}

