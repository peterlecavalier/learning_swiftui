import Cocoa

// FUNCTIONS
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

// Example: isMultiple(of: 2) is a function with parameter "of"
// Same with Int.random(in: 1...20)

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

// In Swift, we need to explicitly write the parameter name in the function call
printTimesTables(number: 5)

func expandedPrintTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

// In Swift, you also must pass parameters in the correct order (here, number before end)
expandedPrintTimesTables(number: 5, end: 20)


// RETURNING VALUES FROM FUNCTIONS
let root = sqrt(169)
print(root)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func sameLetters(a: String, b: String) -> Bool {
    return a.sorted() == b.sorted()
}

// Since there's only one line of code, Swift knows that's the one that must return a Bool
// so, we can remove the "return"
func updatedSameLetters(a: String, b: String) -> Bool {
    a.sorted() == b.sorted()
}

func updatedrollDice() -> Int {
    Int.random(in: 1...6)
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func updatedPythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

// Like other languages, you can use "return" by itself to force a function to exit early.

// Expressions are things that can be assigned to a variable, or printed using print().
// Statements are things that perform actions - creating variables, starting a loop, or checking a condition

// Swift is smart - the following is valid code. Even though it's multiple statements, they're in exclusive conditional branches:
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}

// This is another way to write the above:
func greet2(name: String) -> String {
    let response = if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
    
    return response
}


// RETURNING MULTIPLE VALUES FROM FUNCTIONS
// Below is problematic - hard to remember what each array position should be
func getUser() -> [String] {
    ["Taylor", "Swift"]
}
let user = getUser()
print("Name: \(user[0]) \(user[1])")

// Below is also problematic, we need to provide default values every time...
func getUserDict() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user2 = getUserDict()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")

// Tuples are the best way to handle multiple returns:
func getUserTuple() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUserTuple()
print("Name: \(user3.firstName) \(user3.lastName)")

// We don't need to repeat the names in tuple return:
func betterGetUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

// Can also use numerical indices to access return variables in tuples:
func getUserNumeric() -> (String, String) {
    ("Taylor", "Swift")
}

let user4 = getUserNumeric()
print("Name: \(user4.0) \(user4.1)")

// You can pull tuples apart after they're returned:
let user5 = getUserTuple()
let firstName = user5.firstName
let lastName = user5.lastName
print("Name: \(firstName) \(lastName)")

// Simpler way of doing the above:
let (firstName2, lastName2) = getUserTuple()
print("Name: \(firstName2) \(lastName2)")

// Can use _ to omit returning certain variables:
let (firstName3, _) = getUserTuple()
print("Name: \(firstName3)")


// CUSTOMIZING PARAMETER LABELS
func rollCustomDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollCustomDice(sides: 6, count: 4)

// Can have duplicate function names with distinct parameter names:
func hireEmployee(name: String) {}
func hireEmployee(title: String) {}
func hireEmployee(location: String) {}

let lyric = "I see a red door and I want it painted black"
// Don't need to specify function parameter here...
print(lyric.hasPrefix("I see"))

// Adding an underscore in parameter definition makes defining the param name not required
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let upperResult = isUppercase(string)

// We can have a separate parameter name for internal and external use.
// Here, "for" is used externally and "number" is used internally:
func printTimesTablesNew(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesNew(for: 5)
