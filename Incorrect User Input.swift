//
//  Incorrect User Input.swift
//  TheCellSell
//
//  Created by Brad Kang on 2021-02-01.
//

//
//  main.swift
//  TheCellSell
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/the-cell-sell.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-the-cell-sell.pdf
//

import Foundation

print("The Cell Sell")
print("=============")

// INPUT
// Using guard let.
// Get daytime minutes
var day = 0
while true {
    
    // Prompt the user
    print("Number of daytime minutes? ")
    
    // Collect input
    // Guard let is designed to exit the loop or function if the condition fails.
    // Protects against false inputs.
    // This guard statement checks if the constant givenInput is equal to the user input.
    guard let givenInput = readLine() else {
        continue
    }
    
    // Convert to an integer
    // This guard statement checks if the input was an integer by trying to convert it into one.
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    // Check that the value is positive
    // This guard statement checks if the given integer is greater than 0.
    guard givenInteger > 0 else {
        continue
    }
    
    // Assign the given integer to our "day" variable
    // This is required because the constant created in the loop is destroyed after the loop is ended.
    day = givenInteger
    
    // Stop the loop
    break
    
}
// Get evening minutes
print("Number of evening minutes?")
let evening = Int(readLine()!)!

// Get weekend minutes
print("Number of weekend minutes?")
let weekend = Int(readLine()!)!

// INPUT

// PROCESS
//
// NOTE: To unit test logic you have written, it must be encapsulated (described) within a function.
//
//       Write a function with:
//
//       1. a meaningful name
//       2. parameters that describe the input required
//            (in this case, three integers)
//       3. an appropriate return type
//            (in this case, a string describing what plan is least expensive)
//
func compareCosts(day: Int, evening: Int, weekend: Int) -> String {
    
    // Calculate cost for plan A
    var a = 0
    
    // Add daytime cost
    if day > 100 {
        a += (day - 100) * 25
    }
    
    // Add evening cost
    a += evening * 15
    
    // Add weekend cost
    a += weekend * 20
    
    // Calculate cost for plan B
    var b = 0
    
    // Add daytime cost
    if day > 250 {
        b += (day - 250) * 45
    }
    
    // Add evening cost
    b += evening * 35
    
    // Add weekend cost
    b += weekend * 25
    
    // Build the result to be returned
    var result = ""
    
    result += "Plan A costs \(a)\n"
    result += "Plan B costs \(b)\n"
    
    if a > b {
        result += "Plan B is cheapest."
    } else if a == b {
        result += "Plans A and B are the same price."
    } else {
        result += "Plan A is cheapest."
    }
    
    // Return the result
    return result
    
}

// OUTPUT
//
// Invoke the new function to get result and print it to the screen
let output = compareCosts(day: day,
                          evening: evening,
                          weekend: weekend)
print(output)
