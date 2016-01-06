//: Playground - noun: a place where people can play
//The Swift Programming Language (Swift 2.1 prerelease)


import UIKit

//Page 5
var str = "Hello, playground"

//page 6
var myVariable = 42

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


