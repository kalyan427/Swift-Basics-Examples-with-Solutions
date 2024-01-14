//
//  ViewController.swift
//  Uploading Profile Information
//
//  Created by kalyan . on 1/14/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makePostApiCall()
    }
    
    func makePostApiCall() {
        guard let url = URL(string: "https://httpbin.org/post") else {
            print("Error")
            return
        }
        
        let userData: [String: Any] = [
            "name": "John Doe",
            "email": "john@example.com",
            "bio": "Software Developer"
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

