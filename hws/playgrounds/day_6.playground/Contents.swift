import Cocoa

// FOR LOOPS
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
// the "os" variable doesn't matter, we can use anything here...

// looping through a range
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

// nested loop
for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    
    // This does a newline
    print()
}

// exclusive range:
for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
// exclusivity will be useful for working with arrays


var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// working with arrays
let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[1...3])
print(names[1...])


// WHILE LOOPS
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

// rng
let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

// Create an int to store our roll
var roll = 0

// loop until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical hit!")


// BREAK AND CONTINUE
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// Labeled statements:
// example:
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
            }
        }
    }
}

// solution - label our outermost loop as outerLoop and break out of that:
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


// CHECKPOINT 3
var mult3Or5 = false
var printString = ""
for i in 1...100 {
    if i.isMultiple(of: 3) {
       printString += "Fizz"
        mult3Or5 = true
    }
    
    if i.isMultiple(of: 5) {
        printString += "Buzz"
        mult3Or5 = true
    }
    
    if mult3Or5 == false {
        printString = "\(i)"
    }
    print(printString)
    
    mult3Or5 = false
    printString = ""
}

// simpler version:
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
