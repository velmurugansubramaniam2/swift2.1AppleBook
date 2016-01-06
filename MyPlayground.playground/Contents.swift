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


