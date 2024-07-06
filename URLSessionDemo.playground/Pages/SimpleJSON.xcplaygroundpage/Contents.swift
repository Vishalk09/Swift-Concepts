import UIKit

// Model for TODO JSON
struct TODOModel: Codable {
    let id: Int
    let userId: Int
    let title: String
    let completed: Bool
}

func fetchData(_ completionHandler: @escaping ([TODOModel]) -> Void) {
    let url = URL(string: "https://jsonplaceholder.typicode.com/todos")!
    let urlRequest = URLRequest(url: url)
    URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
        do {
            if let data = data {
                let decodedData = try JSONDecoder().decode([TODOModel].self, from: data)
                completionHandler(decodedData)
            } else {
                print("No data")
                completionHandler([])
            }
            
        } catch {
            print("Error")
        }
    }.resume()
}

fetchData() { data in
    for todoItem in data {
        print("Id: \(todoItem.id), UserId: \(todoItem.userId), Title: \(todoItem.title), Completed: \(todoItem.completed)")
    }
}


