import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


DispatchQueue.main.async {
    print( Thread.isMainThread ? "Execution on main thread" : "Execution onnsome other thread")
}

DispatchQueue.global().async {
    print( Thread.isMainThread ? "Execution on main thread" : "Execution on global concurrent queue")
}

// QoS: User Interactive -: should be done when dealing with animations (Recommended is to use main). Involved in updating UI.
DispatchQueue.global(qos: .userInteractive).async {
    print( Thread.isMainThread ? "Execution on main thread (QoS: UI)" : "Execution on global concurrent queue (QoS: UI)")
}

// QoS: User initiated -: When user performing some actions and some data is immediately require for UI to render then this QoS is used. Data required for seamless user experience.
DispatchQueue.global(qos: .userInitiated).async {
    print( Thread.isMainThread ? "Execution on main thread (QoS: User initiated)" : "Execution on global concurrent queue (QoS: User initiated)")
}

// QoS: Utility -: When performing long running tasks. User aware of progress.
DispatchQueue.global(qos: .utility).async {
    print( Thread.isMainThread ? "Execution on main thread (QoS: Utility)" : "Execution on global concurrent queue (QoS: Utility)")
}

// QoS: Background -:  Performing task which should be done in background like backup operations. User not aware of the task.
DispatchQueue.global(qos: .background).async {
    print( Thread.isMainThread ? "Execution on main thread (QoS: background)" : "Execution on global concurrent queue (QoS: background)")
}

// Qos : Default, QoS: Unspecified

