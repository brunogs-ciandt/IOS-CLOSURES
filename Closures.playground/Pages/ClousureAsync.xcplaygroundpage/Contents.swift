//: [Previous](@previous)

import Foundation



//: [Next](@next)

var messageResult:String = "Waitingou acho que nao" {
    willSet {
        print("novo resultado \(newValue)")
    }
    didSet {
        print("antigo resultado \(oldValue)")
    }
}

func makeRequest(_ resultCallBack: @escaping (String) -> Void){
    print("Starting, Request")
    
    DispatchQueue.global().asyncAfter(deadline: .now() + 5) {
        print("Request Finished")
        resultCallBack("Success")
    }
    
    print("Request Senting")
}

var requestAsync : () = makeRequest( { message in
    print("Resultado: \(message)")
    messageResult = message
    print(messageResult)
})

requestAsync
