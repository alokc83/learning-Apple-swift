// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

 //page 23
//function take another function as argument
func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]
println(hasAnyMatches(numbers, lessThanTen))
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result

})


sort([1,5,12,2]) { $0 > $1 }

// Object and Classes

class Shape {
    var numberOfSides = 0;
    let stringName = "Shape"
    func simpleDescription() -> String {
        return "A Shape With \(numberOfSides) Sides"
    }
    
    func anotherFunction(str: String) {
        var someName = str
        println(someName)
    }
}

var shape = Shape()
shape.numberOfSides = 5
var shapeDescription = shape.simpleDescription()

// page 26
class namedShape {
    var numberOfSides: Int = 0
    var name: String;
    
    init(name: String)
    {
        self.name = name;
        
    }
    
    func simpleDescription() -> String
    {
        return "A shape with \(numberOfSides) sides"
        
    }
    
    deinit()
    {
        //do some clean up here
    }
}



class Square: namedShape
{
    var sideLength: Double;
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength;
        super.init(name: name)
        numberOfSides = 4;
        
    }
    
    func area() -> Double
    {
        return sideLength * sideLength;
    }
    
    override func simpleDescription() -> String
    {
        return "A Square with sides of length \(sideLength).";
        
    }
}


let test = Square(sideLength: 5.2, name: "my test square")
test.area();
test.simpleDescription();















