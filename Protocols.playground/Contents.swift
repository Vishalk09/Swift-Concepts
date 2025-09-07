import UIKit

protocol Identity {
    var firstName: String {get}
    var lastName: String {get}
    var dob: String {get}
}

struct Person: Identity {
    var firstName: String
    var lastName: String
    var dob: String
    
    func getFullName() -> String {
        return firstName + " " + lastName
    }
}

let person1 = Person(firstName: "Virat", lastName: "Kohli", dob: "5/11/1988")
print(person1.getFullName())
print(person1.dob)

class Employee: Identity {
    var firstName: String
    var lastName: String
    var dob: String
    
    init(firstName: String, lastName: String, dob: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.dob = dob
    }
}

let emp1 = Employee(firstName: "Mark", lastName: "Zuckerberg", dob: "9/9/1999")

print(emp1.firstName) // "Mark\n"
emp1.firstName = "Steve"
print(emp1.firstName) // "Steve\n"
/*
 Note: If a protocol requires a property to be gettable, conforming types may implement it as either get-only or get-and-set, since providing a getter is the minimum requirement imposed by the protocol.
 */

// Protocol that all players must conform to
protocol Player {
    var name: String { get }
    func play()
}

// Batsman conforms to Player
struct Batsman: Player {
    let name: String
    func play() {
        bat()
    }
    private func bat() {
        print("\(name) is batting 🏏")
    }
}

// Bowler conforms to Player
struct Bowler: Player {
    let name: String
    func play() {
        bowl()
    }
    private func bowl() {
        print("\(name) is bowling 🏏")
    }
}

// CricketTeam uses Player protocol instead of class inheritance
struct CricketTeam {
    let name: String
    let team: [Player]
    
    func play() {
        team.forEach { $0.play() }
    }
}

// Usage
let rohitSharma = Batsman(name: "Rohit Sharma")
let bumrah = Bowler(name: "Jasprit Bumrah")

let indianTeam = CricketTeam(name: "India", team: [rohitSharma, bumrah])
indianTeam.play()
