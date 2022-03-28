
import Foundation

func sum(_ a:Int, b:Int) -> Int {
    return a + b
    
}

sum(  2, b: 5)

func calculate(_ a:Int, _ b:Int, operationFunction: (_ a:Int, _ b:Int)-> Int) -> Int {
   return operationFunction(a, b)
}

calculate(10, 15, operationFunction: sum)

calculate(23, 15, operationFunction: {(_ a:Int, _ b:Int)-> Int in return a + b})

calculate(14, 15, operationFunction: {a,b in return a + b})

calculate(45, 15, operationFunction: { return $0 + $1})

calculate(7, 15, operationFunction: { $0 + $1})

calculate(9, 15, operationFunction:  +  )

calculate(9, 15) { $0 + $1 }

var names = ["bruno","carol","vitor","tais","roberto"]

var result = names.map({$0.uppercased()})
print(result)
print(names.map({$0 + " last name"}))

print(names.filter({$0.count < 5}))

let peoples = ["Junior": 18, "Bruno": 20]

let nameList = peoples.filter { $0.value > 18 }.map{ $0.key }

print(nameList)
