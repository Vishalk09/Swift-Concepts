import Foundation

/*
 {
     "id": 1,
     "name": "Leanne Graham",
     "username": "Bret",
     "email": "Sincere@april.biz",
     "address": {
       "street": "Kulas Light",
       "suite": "Apt. 556",
       "city": "Gwenborough",
       "zipcode": "92998-3874",
       "geo": {
         "lat": "-37.3159",
         "lng": "81.1496"
       }
     },
     "phone": "1-770-736-8031 x56442",
     "website": "hildegard.org",
     "company": {
       "name": "Romaguera-Crona",
       "catchPhrase": "Multi-layered client-server neural-net",
       "bs": "harness real-time e-markets"
     }
   }
 */
struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Geo: Codable {
    let lat: String
    let lng: String
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}

func fetchUserData(_ completionHandler: @escaping ([User]) -> Void) {
    let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    let urlRequest = URLRequest(url: url)
    URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
        
        do {
            if let data = data {
                let decodedData = try JSONDecoder().decode([User].self, from: data)
                completionHandler(decodedData)
            } else {
                print("No data")
            }
        } catch {
            print(error)
        }
    }.resume()
}

fetchUserData() { data in
    for user in data {
        print("\(user.name), \(user.address.city)")
    }
}
