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
