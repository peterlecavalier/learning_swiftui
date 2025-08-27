import Cocoa

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

// This is a constant
let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"


let lifeLength = meaningOfLife.count
print(lifeLength)

print(meaningOfLife.uppercased())

print(meaningOfLife.hasPrefix("How"))

let filename = "paris.jpg"

print(filename.hasSuffix(".jpg"))

let score = 10
// Swift ignores underscores
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter = counter + 5
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))

let floatNumber = 0.1 + 0.2
print(floatNumber)

let a = 1
let b = 2.0
let c = a + Int(b)
// or could do c = Double(a) + b

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

var nameStr = "Nicolas Cage"
nameStr = "John Travolta"

var rating = 5.0
rating *= 2

// If you see CGFloat, just pass it a double.
