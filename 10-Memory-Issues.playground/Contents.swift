import Foundation

// **********************************************************************
// MARK: - Closures and memory management!

class ServiceA {
    
    var closure: (String) -> Void = {_ in}
    
    init() {
        print("Init Service A")
    }
    
    deinit {
        print("De-init Service A")
    }
    
    func runSomething() {
        closure("Lorem ipsum")
    }
    
}

class ServiceB {
    
    let serviceA = ServiceA()
    
    init() {
        print("Init Service B")
//        serviceA.closure = { string in
//            self.output(string: string)
//        }
    }
    
    deinit {
        print("De-init Service B")
    }
    
    func output(string: String) {
        print(string)
    }
    
}

var service: ServiceB? = ServiceB()
//service?.serviceA.runSomething()
service = nil
