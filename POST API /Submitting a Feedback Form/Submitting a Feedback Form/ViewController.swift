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
        makePOSTAPICall()
    }
    
    func makePOSTAPICall() {
        guard let url = URL(string: "https://httpbin.org/post") else {
            print("Error")
            return
        }
        
        let urlEncodedString = "name=John+Doe&email=john@example.com&message=Great+Service"
        guard let urlEncodedData = urlEncodedString.data(using: .utf8) else {
            print("Error")
            return
        }
                
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpBody = urlEncodedData
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print(error)
            }
            
            if let data = data, let dataString = String(data: urlEncodedData, encoding: .utf8) {
                print(dataString)
            }
        }.resume()
    }
}

