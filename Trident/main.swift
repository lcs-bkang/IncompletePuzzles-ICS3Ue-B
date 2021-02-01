//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
let t = Int.collectInputInt(withPrompt: "Enter tine length: ", minimum: 0, maximum: nil)


// Get tine spacing
let s = Int.collectInputInt(withPrompt: "Enter tine spacing: ", minimum: 0, maximum: nil)

// Get handle length.
let h = Int.collectInputInt(withPrompt: "Enter handle length: ", minimum: 0, maximum: nil)

// Making lines separate the input lines and the trident.
for _ in 1...2 {
    print("")
}

// PROCESS
func drawTrident(tineLength t: Int, tineSpacing s: Int, handleLength h: Int) -> String {
    
    // Create a variable to store output.
    var output = ""
    // Draw the first line of all three tines with spaces in between.
    // Pattern is *, space, space.  *, space, space...
    // Draws all tines for the tine length.
    for _ in 1...t {
        
        // Draw all three tines with spaces inbetween
        for _ in 1...3 {
            // Print the stars in a horizontal row
                output += "*"
            
            // Print the spaces inbetween stars
            for _ in 1...s {
                output += " "
            }
        }
        
        // Row is completed, go to next line.
        // The \n character sequece pushes content down to the next line
        // You can use print("") to push to the next line, using the built in terminator.
        // Or you can change it to be written as this
        print("\n", terminator: "")
    }
    // Draw the line connecting the tines.
    for _ in 1...2 {
        output += "*"
        
        for _ in 1...s {
            output += "*"
        }
    }
    // Printing the last star in the connector line and go down to the next line.
    output += "*"
    output += "\n"
    
    // Create a variable that holds the value of the spaces before the handle.
    let handleSpace = s + 1
    // Print the trident handle
    for _ in 1...h {
        for _ in 1...handleSpace {
            output += " "
        }
        output += "*"
    }
    // Return the output
    return output
}

// OUTPUT
// Creating the value that runs the function.  Call site.
let pOutput = drawTrident(tineLength: t, tineSpacing: s, handleLength: h)

// Print thr output
print(pOutput)
