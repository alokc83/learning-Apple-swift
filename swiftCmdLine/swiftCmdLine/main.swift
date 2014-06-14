//
//  main.swift
//  swiftCmdLine
//
//  Created by Alix Cewall on 6/7/14.
//  Copyright (c) 2014 All rights reserved.
//

import Foundation

//println("Hello, World!")
//
//println("What the heck is that")
//
//let strConst = "this is string"
//let intConst = 70
//println(strConst)
//
//println(intConst)
//var inte = intConst + 60
//println(inte)
//
//let stringWithInt = "I have \(inte) apples"
//
//println(stringWithInt)


//
//var shoppingList = ["catfish", "water", "tulips", "buleberry"]
//println(shoppingList[3])
//shoppingList[3] = "BLUEBERRY"
//println(shoppingList[3])
//
//
//let emptyArray = String[]();
//let emptyDictonary = Dictionary<String, Float>()
//
//println(shoppingList)
//shoppingList = []
//
//println(shoppingList)


//
//let individualScores = [75,43,10, 87,92]
//var teamScore = 0
//for score in individualScores
//{
//    if score > 50 {
//        teamScore += 3
//    } else {
//        teamScore += 1
//    }
//}
//println(teamScore)



//var optionalString: String? = "Hello" // Q mark after type make it optional
//optionalString == nil
//
//var optionalName: String? = "John AppleSeed"
//optionalName = nil
//var greeting = "Hello"
//if let name = optionalName {
//    greeting = "Hello, \(name)"
//    
//} else {
//    greeting = "Hello, Mr NoOne"
//}
//NSLog(greeting)


//let vegetable = "red pepper"
//switch vegetable {
//    case "celery":
//        let vegetableComment = "Add some raisins and make ants on a log"
//    case "cucumber", "watercress":
//        let vegetableComment = "That would make good tea sandwich"
//    case let x where x.hasSuffix("pepper"):
//        let vegetableComment = "is it a spicy \(x)?"
//     NSLog(vegetableComment)
//default:
//        let vegetableComment = "Everything taste good in soup";
//        
//    
//}



//let interestingNumbers = [
//    "Prime":[2,3,5,7,11,13],
//    "Fabonaaci":[1,1,2,3,5,8],
//    "Square":[1,4,9,16,25],
//    "Cube":[1,8,27,64,125]
//]
//var largest = 0
//for(kind,numbers) in interestingNumbers {
//    for number in numbers {
//        if number > largest {
//         largest = number
//        }
//    }
//}
//println(largest)


//var n = 2
//while n<100 {
//    n = n*2
//    
//}
//println(n)
//
//var m = 2
//do {
//    m = m * 2
//}  while m < 100
//println(m)


//var firstForLoop = 0
//for i in 0..3 {
//    firstForLoop += 1
//}
//println(firstForLoop)
//
//var secondForLoop = 0
//for var i = 0; i < 3; ++i {
//    secondForLoop += 1
//}
//println(secondForLoop)
//
//var thirdForLoop = 0
//for i in 0...3 {  // ... (3 dots) include upper value of range
//    thirdForLoop += 1
//}
//println(thirdForLoop)



/* Function and closures */

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

println(greet("Bob", "Monday"))

//returning multiple values
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79)
}
println(getGasPrices())

//variable number of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
println(sumOf(3,4,5))

//ex avg of (not completly correct as function should return Double
func avgOf(numbers: Int...) ->Int {
    var avg = 0
    var sum = 0
    var count = 1
    for number in numbers {
        sum += number
        count += 1
    }
    avg = sum/count
    return avg
}

println(avgOf(2,4,8,2))