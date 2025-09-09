import Cocoa

// TYPE ANNOTATIONS
// So far: Type inference
let surname = "Lasso"
var score = 0

let surname2: String = "Lasso"
var score2: Int = 0

// Not as clear here, but we might want a double:
var score3: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.142
var isAuthenticated: Bool = true
// Arrays, dicts, and sets must be more specialized:
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
// ^ didn't need to pre-define the type. But below, we do:
var teams: [String] = [String]()
// Can also do:
var cities: [String] = []
// or:
var clues = [String]()

// enums:
enum UIStyle {
    case light, dark, system
}

// allows us to remove the enum name for future assignments.
// we know future values will have to be some UIStyle
var style = UIStyle.light
// We could then write this:
style = .dark

let username: String
// This line is REQUIRED to let us print
username = "@twostraws"

print(username)

// This is invalid:
// let score: Int = "Zero"

// CHECKPOINT 2:
let states = ["Colorado", "Illinois", "New York", "Illinois", "New York", "California"]

print("Number of states: \(states.count)")
print("Number of unique states: \(Set(states).count)")
