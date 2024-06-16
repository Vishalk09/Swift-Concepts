import UIKit

class Player {
  let name: String
  init(name: String) {
    self.name = name
  }
  func play() { }
}
class Batsman: Player {
  override func play() {
    bat()
  }
  private func bat() {
    print("\(name) is batting 🏏")
  }
}
class Bowler: Player {
  override func play() {
    bowl()
  }
  private func bowl() {
    print("\(name) is bowling 🎾")
  }
}
class CricketTeam {
  let name: String
  let team: [Player]
  init(name: String, team: [Player]) {
    self.name = name
    self.team = team
  }
  func play() {
    team.forEach { $0.play() }
  }
}
let rohitSharma = Batsman(name: "Rohit Sharma")
let bumrah = Bowler(name: "Jasprit Bumrah")
let indianTeam = CricketTeam(name: "India", team: [rohitSharma, bumrah])
indianTeam.play()

