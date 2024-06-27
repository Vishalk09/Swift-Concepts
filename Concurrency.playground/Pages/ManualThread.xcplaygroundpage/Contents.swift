import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var greeting = "Hello, playground"


class CustomThread {
    func createThread() {
        let thread: Thread = Thread(target: self, selector: #selector(threadSelector), object: nil)
        thread.start()
    }
    
    @objc func threadSelector() {
        print("Custom thread in the action")
    }
}

let customThread = CustomThread()

customThread.createThread()
