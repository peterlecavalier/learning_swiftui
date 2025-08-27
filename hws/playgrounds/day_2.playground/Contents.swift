import Cocoa

let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + " landed on the moon."
print(missionMessage)

print("5 x 5 is \(5 * 5)")

// Checkpoint 1
let celsiusTemp = 25.2
let fahrenheitTemp = (celsiusTemp * 9.0) / 5.0 + 32.0
print("\(celsiusTemp) degrees Celsius is equal to \(fahrenheitTemp) degrees Fahrenheit.")
