//: Playground - noun: a place where people can play
//The Swift Programming Language (Swift 2.1 prerelease)


import UIKit

//Page 5
var str = "Hello, playground"

//page 6
var myVariable = 42
myVariable = 50
//let myConstant =42 //Error: Prefix = is reserved. Solution: Need not to join the = with value.

let myConstant = 42

//Page 7
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 70

let label = "This width is "
let width = 94
let widthLabel = label + String(width)

//Page 8

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruits."


//Page 9
//Array
var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm" : "Captaion",
    "Kaylee" : "Mechanic",
]

occupations["Jayne"] = "Public Relation"
occupations["Jayne"] = "Public Relations"



let emptyArray = [String]()
let emptyDictionary = [String: Float]()

shoppingList = []
occupations = [:]

//Page 10
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }
    else {
        teamScore += 1
    }
}
print(teamScore)

//Page 11
var optionalString: String? = "Hello"

print(optionalString)

var optionalName: String? = "tse"

if let name = optionalName
{
    print("\(name)")
}

//page 12
let nickName:String? = nil

let fullName: String = "Velmurugan"

let informalGreeting = "Hi \(nickName ?? fullName)"



//page 13

let vegtable = "red pepper"

switch vegtable {
case "celery" :
    print("Add some Raisins and make ants on a log.")
    case "cucumber","watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everyting testes god in soup.")
}



//page 15
let interestingNumber = [
"Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "square":[1,4,9,16,25]
]
var largest = 0

for(kind,numbers) in interestingNumber {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

print(largest)


//page 16


var n = 2
while n<100 {
    n = n * 2
}
print(n)


var m = 2
repeat {
m = m * 2
} while m < 100

print(m)





//page 17
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
print(firstForLoop)

//Page 18
func greet (name: String , day: String) -> String
{
    return "Hello \(name), today  is \(day)"
}
greet("Vel", day: "Tuesday")



func calculateStatistics(scores: [Int])-> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores
    {
//Page 19
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    return(min,max,sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
print(statistics.sum)
print(statistics.2)

//Page 20
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    return sum
}

sumOf()
sumOf(42, 597, 12)


//Experiment

func averageOf(numbers: Int...) -> Double {
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    let result: Double = Double(sum) / Double(numbers.count)

    return result
}

averageOf()
averageOf(42, 597, 12)




//Page 21
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

returnFifteen()




func makeIncrementer() -> ((Int)->Int){
    
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)


//Page 22
func hasAnyMatch(list: [Int], condition: (Int) -> Bool)->Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20,19,7,12]
hasAnyMatch(numbers, condition: lessThanTen)


//Page 23
numbers.map { (number: Int) -> Int in
    let result = 3 * number
    return result
}

//Experiment
numbers.map { (number: Int) -> Int in
    if number % 2 != 0 {
        return 0
    }
    let result = 3 * number
    return result
}


//Page 24
let mappedNumbers = numbers.map({number in 3 * number})

print(mappedNumbers)


let sortedNumbers = numbers.sort { (value1: Int, value2: Int) -> Bool in
    return value1 > value2
}
print(sortedNumbers)
let sortedNumbers1 = numbers.sort { $0>$1}

print(sortedNumbers1)








//Page 25
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()


class RectShape {
    var numberOfSides = 0
    let someConstant = "test"
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
    func test () {
        printSomeConstant(someConstant)
        print(someConstant)
    }
    func printSomeConstant(var args1:String) {
        args1 = "723t78t"
        print(args1)
    }
    
}
var rectShape = RectShape()
//rectShape.someConstant = "Try To Change"

//let rectShape1 = RectShape()
//rectShape1.numberOfSides = 10 

//How Let Allow to change the values?
//http://stackoverflow.com/questions/24002999/how-exactly-does-the-let-keyword-work-in-swift


RectShape.init().simpleDescription()
//RectShape.init().printSomeConstant("try")






//Page 26
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
   
    init(name: String) {
        self.name = name //Comment out this line will get an -> error: return from initializer without initializing all stored properties 
//        Solution : Intialize all variable at declare time or initialize at init() .var name: String = ""

    }
    deinit {
        print("\(name) is being deInitialized.");
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//Page 27
class Square : NamedShape {
    var sideLength : Double
    
    init(sideLenght: Double, name: String) {
        self.sideLength = sideLenght
        super.init(name: name) //comment Out this line: Error As follow
//        error: use of 'self' in property access 'numberOfSides' before super.init initializes self        numberOfSides = 4
        
        numberOfSides = 4
        
//Page 28
    }
    
    func area () -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }

}

let test = Square(sideLenght: 5.2, name: "my test Square")
test.area()
test.simpleDescription()







//Page 29

class Circle: NamedShape {
    
    var radius: Double = 0.0
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    override func simpleDescription() -> String {
        return "A radius of the circle is \(radius)."

    }
    func area () -> Double {
        return (22/7) * self.radius * self.radius
    }
    
}

let circle = Circle(radius: 12, name: "Test Circle.")
circle.area()
circle.simpleDescription()




class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
            
//Page 30
        }
        set  {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}




var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)




//Page 31

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
//Page 32
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String){
        square = Square(sideLenght: size, name: name)
        triangle = EquilateralTriangle(sideLength: size,name: name)
    }
    
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")

print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLenght: 50, name: "large square")


//Page 33 
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLenght: 2.5, name: "optional Square")
let sideLength = optionalSquare?.sideLength
