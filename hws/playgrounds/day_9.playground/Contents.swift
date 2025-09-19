import Cocoa

// CLOSURES
func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

// Can also do this:
let sayHello = {
    print("Hi there!")
}

sayHello()

// Allowing parameters:
let sayHelloParams = { (name: String) -> String in
    "Hi \(name)!"
    
}

var greetCopyNew: () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


sayHelloParams("Taylor")


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// What if we always want one person to come first because they're the team captain?
func captainFirstSorted(name1: String, name2: String) -> Bool {
    // Suzanne is the captain
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    // Just do a regular sort if neither is Suzanne
    return name1 < name2
}
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// We can also write the above as this, using a closure in the sorted() param:
let captainFirstTeamNew = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})


// TRAILING CLOSURES AND SHORTHAND SYNTAX
// We can do the following instead of our previous approach:
//let captainFirstTeamShort = team.sorted(by: {name1, name 2 in

// But we can take it a step further with trailing closure syntax:
let captainFirstTeamShort = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// We also don't even need the parameter names!
// They'll just default to $0 and $1
// This doesn't look as clean though...
let captainFirstTeamShortest = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}

// ...but looks pretty clean if it's a simpler closure
let reverseTeam = team.sorted { $0 > $1 }

// More closure examples:
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


// ACCEPTING FUNCTIONS AS PARAMETERS

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// Now we can make a function to be "generator"
// This uses trailing closures.
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

// We can also use dedicated functions:
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)


// Here's how a function would accept multiple functions as params
// using dedicated functions:
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

// And now here's how to call it using trailing closures:
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}


// CHECKPOINT 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let finalNumbers = luckyNumbers.filter({ ($0 + 1).isMultiple(of: 2) })
    .sorted()
    .map( {"\($0) is a lucky number"} )
for number in finalNumbers {
    print(number)
}
