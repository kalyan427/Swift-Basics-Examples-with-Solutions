### Steps to Implement the Request

- **Define the URL**
```swift
 let url = URL(string: "https://httpbin.org/post")!
```

- **Prepare the JSON Data**

```swift
let userData = [
    "username": "newuser",
    "password": "password123"
]

guard let jsonData = try? JSONEncoder().encode(userData) else {
    print("Error: Unable to encode userData to JSON")
    return
}
```

- **Create the URLRequest**

```swift
var request = URLRequest(url: url)
request.httpMethod = "POST"
```

- **Set the Content-Type Header**
```swift
request.setValue("application/json", forHTTPHeaderField: "Content-Type")
```

- **Attach JSON Data to the Request**

```swift
request.httpBody = jsonData
```

-  **Perform the Network Request**

```swift
URLSession.shared.dataTask(with: request) { data, response, error in
    if let error = error {
        print("Error: \(error)")
        return
    }

    if let data = data, let dataString = String(data: data, encoding: .utf8) {
        print("Response Data: \(dataString)")
    }
}.resume()
```

-  **Explanation**

1. Specify the URL where the POST request is to be sent.
2. Create the user data dictionary and convert it to JSON data.
3. Create a URLRequest object with the given URL.
4. Set the Content-Type header to application/json indicating the body content type.
5. Attach the JSON encoded user data to the request body.
6. Execute the network request. Handle the response, error, and data accordingly.

