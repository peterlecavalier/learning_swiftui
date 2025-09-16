import Cocoa

// DEFAULT PARAMETER VALUES

// here, we set "end" to have a default value of 12
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// Example of a Swift function that has a default parameter:
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll()
print(characters.count)

// This function has the "keepingCapacity" parameter for handling memory space
characters.removeAll(keepingCapacity: true)


// HANDLING ERRORS IN FUNCTIONS

// Process:
// 1. Tell Swift about possible errors that can happen
// 2. Write a function that flags errors if they happen
// 3. Call the function, handling any errors that might happen

// Step 1:
enum PasswordError: Error {
    case short, obvious
}

// Step 2:
// Marking this with "throws" means it MIGHT throw errors, not that it MUST
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Step 3:
// example:
//do {
//    try someRiskyWork()
//} catch {
//    print("Handle errors here")
//}
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
// Can also write "try!", but this is only if you're certain an error won't be thrown - crashes your code if so.
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


// CHECKPOINT 4
enum sqrtError: Error {
    case outOfBounds, noRoot
}

func intSqrt(_ x: Int) throws -> Int {
    if x < 1 || x > 10_000 {
        throw sqrtError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == x {
            return i
        }
    }
    
    throw sqrtError.noRoot
}

do {
    let num = 81
    try print(intSqrt(num))
} catch sqrtError.outOfBounds {
    print("Number is out of bounds.")
} catch sqrtError.noRoot {
    print("No square root.")
}
