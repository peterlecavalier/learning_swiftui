import Cocoa

// IF STATEMENTS
let score = 85

if score > 80 {
    print("Great job!")
}

// Ex. 1
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

// Ex. 2
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Ex. 3
var numbers = [1, 2, 3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"
if name != "Anonymous" {
    print("Welcome, \(name)")
}

// Ex. 4
var username = "taylorswift13"
if username == "" {
    username = "Anonymous"
}
print("Welcome, \(username)!")

// Can also do:
if username.count == 0 {
    username = "Anonymous"
}
// ...but this is faster:
if username.isEmpty == true {
    username = "Anonymous"
}
// ...and this is simpler:
if username.isEmpty {
    username = "Anonymous"
}

// For enums:
enum Sizes: Comparable {
    case small, medium, large
}

let first = Sizes.small
let second = Sizes.large
// This prints "true", since small comes before large in the enum case list.
print(first < second)


// CHECKING MULTIPLE CONDITIONS
let age2 = 16

// inefficient
if age2 >= 18 {
    print("You can vote in the next election.")
}
if age2 < 18 {
    print("Sorry, you're too young to vote")
}

// instead:
if age2 >= 18 {
    print("You can vote in the next election.")
}
else {
    print("Sorry, you're too young to vote")
}

// else if
let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

let temp = 25

// long version
if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

// shorter!
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// or statement
let userAge = 14
let hasParentalConsent = true
if userAge >= 18 || hasParentalConsent == true {
    print("You can buy the game")
}
// don't need the == true:
if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

// Combining multiple conditions:
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}


// Note: When mixing conditions, try to always use parentheses for clarity. Ex:
let isOwner = true
let isEditingEnabled = false
let isAdmin = true
if (isOwner && isEditingEnabled) || isAdmin {
    print("You can delete this post")
}


// SWITCH STATEMENTS
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

// Accidentally missed the .snow check, and tediously has to equate with forecast every time.
if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

// Instead:
switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}
// The above makes sure the switch is exhaustive, and that duplicates aren't present.

// For strings:
let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
// below will run if no other cases match.
default:
    print("Who are you?")
}

// not using fallthrough (incorrect for the song):
let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

// Using fallthrough - executes the very next case:
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


// TERNARY CONDITIONAL OPERATOR
let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// A little tougher to read when using == for equality:
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

// Although the following works fine, it becomes much more complicated in SwiftUI without ternary op:
if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}
